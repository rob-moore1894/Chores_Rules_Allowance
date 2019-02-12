$(document).ready(function(){

    var chores = [
        {id: 1, name: "Make Bed", child: "All", day: "Each"},
        {id: 2, name: "Clean Room", child: "All", day: "Each"},
        {id: 3, name: "Feed/Water Cat", child: "Laurelynn", day: "Each"},
        {id: 4, name: "Clean Kitchen", child: "Laurelynn", day: "Monday"},
        {id: 5, name: "Dishes", child: "Laurelynn", day:"Tuesday"},
        {id: 6, name: "Clean Living Room", child: "Laurelynn", day: "Wednesday"},
        {id: 7, name: "Clean Cat Litter Box", child: "Laurelynn", day: "Thursday"},
        {id: 8, name: "Laundry", child: "Laurelynn", day: "Saturday"},
        {id: 9, name: "Clean Table", child: "Averie", day: "Monday" },
        {id: 10, name: "Recycling Out and In", child: "Averie", day: "Tuesday"},
        {id: 11, name: "Laundry", child: "Averie", day: "Wednesday" },
        {id: 12, name: "Sweep and Mop Kitchen and Dining Room", child: "Averie", day: "Friday" },
        {id: 13, name: "Trash In and Out", child: "Averie", day: "Thursday"},
        {id: 14, name: "Clean Bathroom Counters", child: "Blake", day: "Monday"},
        {id: 15, name: "Clean Office", child: "Blake", day: "Tuesday"},
        {id: 16, name: "Dust", child: "Blake", day: "Wednesday"},
        {id: 17, name: "Laundry", child: "Blake", day: "Thursday"},
        {id: 18, name: "Pick up All Toys", child: "Blake", day: "Friday"},
        {id: 19, name: "Clean Under Couches", child: "Blake", day: "Saturday"},
    ];

    chores.forEach(function(chore) {
        if (chore.child === "All"){
            $('#testContainer').append(`<div class="card-body choice"><input type="checkbox" class="chore1" id="lsChore1">${chore.name}</div>`);
        } else if (chore.child === "Laurelynn") {
            console.group("Lowee");
            console.log(chore.name);
            console.groupEnd();
        } else if (chore.child === "Averie") {
            console.group("Averie");
            console.log(chore.name);
            console.groupEnd();
        } else if (chore.child === "Blake") {
            console.group("Blake");
            console.log(chore.name);
            console.groupEnd();
        }
    });

    $('#lsChore1').click(function () {
        var choreDone = false;
    });
});