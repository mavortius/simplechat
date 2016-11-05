package asia.grails.simplechat

class ChatController {

    def index() { }

    def join(String nickname) {
        if(nickname.trim() == '') {
            redirect action: 'index'
        } else {
            session.nickname = nickname

            render view: 'chat'
        }
    }

    def retrieveLatestMessages() {
        def messages = Message.listOrderByDateCreated(order: 'desc', max: 10)

        [messages: messages.reverse()]
    }

    def submitMessage(String text) {
        new Message(nickname: session.nickname, text: text).save()

        render "<script>retrieveLatestMessages()</script>"
    }
}
