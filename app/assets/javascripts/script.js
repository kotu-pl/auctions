$(document).ready(function () {
    var u =  $('#auctions').data('url');
    if(u != null){
        u = u.split('?',2);
        (function worker() {
            $.ajax({
                url: u.length == 1 ? u + '.json' : u[0] + '.json?' + u[1],
                success:function (data) {
                    $.each(data, function (index, value) {
                        $('#time4auction_' + value[0]).html(value[1] == null ? '<span class="red">expired</span>' : value[1]);
                    });
                },
                complete:function () {
                    setTimeout(worker, 5000);
                }
            });
        })();
    }
});




