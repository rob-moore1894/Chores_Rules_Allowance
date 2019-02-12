$(document).ready(function() {
    var chores = [
        {id: 1, name: "Make Bed", child: "All", day: "Each"},
        {id: 2, name: "Clean Room", child: "All", day: "Each"},
        {id: 3, name: "Feed/Water Cat", child: "Laurelynn", day: "Each"},
        {id: 4, name: "Clean Kitchen", child: "Laurelynn", day: "Monday"},
        {id: 5, name: "Dishes", child: "Laurelynn", day: "Tuesday"},
        {id: 6, name: "Clean Living Room", child: "Laurelynn", day: "Wednesday"},
        {id: 7, name: "Clean Cat Litter Box", child: "Laurelynn", day: "Thursday"},
        {id: 8, name: "Laundry", child: "Laurelynn", day: "Saturday"},
        {id: 9, name: "Clean Table", child: "Averie", day: "Monday"},
        {id: 10, name: "Recycling Out and In", child: "Averie", day: "Tuesday"},
        {id: 11, name: "Laundry", child: "Averie", day: "Wednesday"},
        {id: 12, name: "Sweep and Mop Kitchen and Dining Room", child: "Averie", day: "Friday"},
        {id: 13, name: "Trash In and Out", child: "Averie", day: "Thursday"},
        {id: 14, name: "Clean Bathroom Counters", child: "Blake", day: "Monday"},
        {id: 15, name: "Clean Office", child: "Blake", day: "Tuesday"},
        {id: 16, name: "Dust", child: "Blake", day: "Wednesday"},
        {id: 17, name: "Laundry", child: "Blake", day: "Thursday"},
        {id: 18, name: "Pick up All Toys", child: "Blake", day: "Friday"},
        {id: 19, name: "Clean Under Couches", child: "Blake", day: "Saturday"},
    ];

    console.table(chores);

    let rules = [];
    $('#addRuleBtn').click(function () {
        rules.push($('#rule').val());
        rules.forEach(function (rule) {
            $('.listOfRules').html(`<div class="card-body">${rule}</div>`);
        });
        console.table(rules);
    });

    function renderChore(chore) {
        var html = "<div id='coffee.id' class='card col-6 bg-light float-left text-capitalize animated flipInX'>";
        if (chore.child === "All") {
            html += "<span class='all'>" + chore.name + "</span>" + " ";
        } else if (chore.child === "Laurelynn") {
            html += "<span class='laurelynn'>" + chore.name + "</span>" + " ";
        } else {
            html += "<span class='averie'>" + chore.name + "</span>" + " ";
        }
        html += "<span class='blake'>" + chore.name + "</span>";
        html += "</div>";

        return html;
    }

    function renderChores(chores) {
        var html = '';
        chores.forEach(function (chore) {
            html += renderChore(chore);
        });

        return html;
    }

    $('.calculate').click(function (e) {
        e.preventDefault();
    });

});



