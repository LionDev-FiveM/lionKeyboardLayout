$(document).ready(function() {
    $("#zvkl").hide()
    $("#zvklveh").hide()
    $("#zvklleft"). hide()
    $("#zvklvehleft").hide()

    window.addEventListener('message', (event) => {
        const data = event.data
        switch (data.action) {
            case "show":
                $("#zvkl").show();
                break;
            case "hide":
                $("#zvkl").hide();
                break;
            case "showleft":
                $("#zvklleft").show();
                break;
            case "hideleft":
                $("#zvklleft").hide();
                break;
            default:
                console.log("ERROR: No case found")
                break;
        }
    })
    $("#button1").click(function () {
        $("#zvklveh").hide()
        $("#zvkl").show()
            return
    })
    $("#button2").click(function () {
        $("#zvklveh").show()
        $("#zvkl").hide()
            return
    })

    $("#button1left").click(function () {
        $("#zvklvehleft").hide()
        $("#zvklleft").show()
            return
    })
    $("#button2left").click(function () {
        $("#zvklvehleft").show()
        $("#zvklleft").hide()
            return
    })
})

document.onkeyup = function (data) {
    if (data.which == 27 || data.which == 8) {
        $("#zvklveh").hide()
        $("#zvkl").hide()
        $("#zvklvehleft").hide()
        $("#zvklleft").hide()
        $.post('https://lionKeyboardLayout/focus')
    }
}