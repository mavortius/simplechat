package asia.grails.simplechat

class Message {

    String nickname
    Date dateCreated
    String text

    static constraints = {
        nickname blank: false
        text nullable: true
    }
}
