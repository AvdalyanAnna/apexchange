$(document).ready(function (){
    $('#bit_gateway_send_ul li').on('click',function (){
        $('#bit_gateway_send').val($(this).data('id')).trigger('change');
        $('#bit_gateway_send_ul li').removeClass('active')
        $(this).addClass('active')
    })
    $('#bit_gateway_receive_ul li').on('click',function (){
        $('#bit_gateway_receive').val($(this).data('id')).trigger('change');
        $('#bit_gateway_receive_ul li').removeClass('active')
        $(this).addClass('active')
    })
})