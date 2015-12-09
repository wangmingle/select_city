var ready = function() {
    selects = $.find('.city-select');

    var one_id = '#' + $(selects[0]).attr('id');
    var two_id = '#' + $(selects[1]).attr('id');
    $(one_id).change(function() {
        two_select = $(two_id);
        selected = $(one_id + ' option:selected').val();
        $("option:gt(0)", two_select).remove();
        $.get("/selectcity/get_districtes?city_code=" + selected, function(data) {
            if (data.data) {
                data = data.data;
            }
            $.each(data, function(k, v) {
                selects[1].options.add(new Option(v, k))
            });
        });

    });
};

$(document).ready(ready);
$(document).on('page:load', ready);