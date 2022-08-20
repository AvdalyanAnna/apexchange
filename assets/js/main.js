$(document).ready(function (){
    $('#bit_gateway_send_ul li').on('click',function (){
        let coin_id = $(this).data('id');
        $('#bit_gateway_send').val($(this).data('id')).trigger('change');
        $('#bit_gateway_send_ul li').removeClass('active')
        $(this).addClass('active')

        var url = $("#url").val();
        var data_url = url + "requests/bit_get_rates.php";
        $.ajax({
            type: "POST",
            url: data_url,
            data: {
                coin_id:coin_id
            },
            dataType: "json",
            success: function (data) {
                console.log(data);
            }
        });
    })
    $('#bit_gateway_receive_ul li').on('click',function (){
        $('#bit_gateway_receive').val($(this).data('id')).trigger('change');
        $('#bit_gateway_receive_ul li').removeClass('active')
        $(this).addClass('active')
    })
})