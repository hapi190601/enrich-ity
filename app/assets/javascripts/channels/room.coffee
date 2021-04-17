document.addEventListener 'turbolinks:load', ->
  if App.room
    App.cable.subscriptions.remove App.room

  # サーバー側のチャネルをcreate
  # 引数のRoomChannel = app/channels/room_channel.rbで指定されるサーバー側のチャネルにクライアント側から接続する
  App.room = App.cable.subscriptions.create { channel: "RoomChannel", room: $('#direct_messages').data('room_id') },

    connected: ->

    disconnected: ->

    # 処理⑧
    # サーバー側から送られてきたデータを引数dataで受け取る
    # 受け取ったdirect_message(入力されたメッセージ)を(idがdirect_messageの箇所)にappendする(HTML要素を追加する)
    received: (data) ->
      $('#direct_messages').append data['direct_message']

    # 処理④
    # room_channel.rbのspeakメソッドを呼び出している
    speak: (direct_message, opponent_id) ->
      @perform 'speak', { direct_message: direct_message, opponent_id: opponent_id }

  # 処理③
  # data-behavior属性がroom_speakerである入力フォームでのキーボード入力イベントで発火
  $(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
    if event.keyCode is 13

      opponent_id = document.getElementById('opponent_id').value
      # 22行目のspeakメソッドを呼び出す(引数はフォームのメッセージ本文とチャット相手のid)
      App.room.speak event.target.value, opponent_id

      # サーバー側に処理をお願いした為、入力フォームを空にする(valueで初期値を空に)
      event.target.value = ''
      # サーバー側に処理をお願いした為、入力フォームでのデータ送信(クライアント側でのフォーム送信)処理は止める。.preventDefault：直前のイベントをキャンセルという意味.
      event.preventDefault()