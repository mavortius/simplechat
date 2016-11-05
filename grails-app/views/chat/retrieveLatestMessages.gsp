<g:each in="${messages}" var="message">
    <div>
        <span class="nickname">${message.nickname}</span> - <span class="msg">${message.text}</span>
    </div>
</g:each>