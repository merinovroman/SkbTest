$(document).ready(function() {

    const $valueSpan = $('.valueSpan2');
    const $value = $('#customRange11');
    $valueSpan.html($value.val());
    $value.on('input change', () => {

        $valueSpan.html($value.val());
    });

    $( function() {
        $( "#summ-range-credit" ).slider({
            range: "max",
            min: 51000,
            max: 1000000,
            value: 150000,
            step: 1000,
            slide: function( event, ui ) {
                $( "#summ-amount" ).html( ui.value );
            }
        });
        $( "#summ-amount" ).html( $( "#summ-range-credit" ).slider( "value" ) );
    } );

    $( function() {
        $( "#srok-range-credit" ).slider({
            range: "max",
            animate: "fast",
            min: 12,
            max: 60,
            value: 36,
            step: 12,
            slide: function( event, ui ) {

            }
        });

        //var opt = $(".srok-range-credit").data().uiSlider.options,
            min = 1,
            raz = 4;
        for (var i = 0; i <= raz; i++) {
            $(".months").append($('<b>'+((min++)*12)+'</b>').css('left',(i/raz*100)+'%'));
        }

    } );

});