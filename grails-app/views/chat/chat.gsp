<html>
<head>
    <meta name="layout" content="main"/>
    <title>Simple Chat</title>
    <style type="text/css">
    #chatMessages {
        border: 1px solid #000;
        height: 300px;
        width: 900px;
        overflow-y: auto;
    }
    #messageBox {
        width: 888px;
    }
    .nickname {
        color: #f00;
        font-weight: bold;
    }
    .msg {
        color: #444;
        font-weight: normal;
    }
    </style>
</head>
<body>
<div id="chatMessages"></div>
<br />
<label for="messageBox">Mensagem: </label>
<input type="text" id="messageBox" name="text" onkeypress="messageKeyPress(this,event);"/>
<div id="temp"></div>

</body>
</html>