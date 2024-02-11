$(document).ready(function () {
    function initializeStatistics(ratings) {
        console.log(ratings)
        if (ratings.length === 0) {
            console.log("There are no ratings");
            return;
        }
        // convert ratings to stars
        var stars = {
            1: [],
            2: [],
            3: [],
            4: [],
            5: []
        };
        var widths = []
        // add the ratings to its respective star array
        ratings.forEach(function (rate) {

            var star = getStarFromScore(rate);
            stars[star].push(rate)
        })

        for (var i = 1; i <= 5; i++) {
            var bar = $("#ratingBar" + i);
            var desc = $("#desc" + i);
            var width = stars[i].length / ratings.length;
            bar.width((width * 100) + "%");
            console.log(width * 100)
            desc.html(stars[i].length)
        }
    }



    function getStarFromScore(score) {

        switch (true) {
            case (score < 2):
                return 1;
            case (score < 3):
                return 2;
            case (score < 4):
                return 3;
            case (score < 5):
                return 4;
            default:
                return 5;
        }
    }




    initializeStatistics(JSON.parse(comments))
})