(function() {
    this.listener = window.addEventListener('message', function(event)
    {
        const item = event.data
        if (this[item.type]) {
            this[item.type](item)
        }
        else {
            this.noMethod(item.type);
        }
    });

    this.MESSAGE_MIDDLE = (data) => {
        $("#message-middle").html(data.message);
        $("#message-middle").show();
        setTimeout(function(){
            $("#message-middle").hide();
        },5000)
    }
    this.MESSAGE_RIGHT = (data) => {
        $("#message-right").html(data.message);
        $("#message-right").show();
        setTimeout(function(){
            $("#message-right").hide();
        },5000)
    }
    this.MESSAGE_SERVER = (data) => {
        $("#message-server").html(data.message);
        $("#message-server").show();
        setTimeout(function(){
            $("#message-server").hide();
        },5000)
    }
    
    this.noMethod = (type) => {
        console.log('no valid method')
    }
})();

