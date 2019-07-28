$(function() {

  $("i:contains('restaurant')").on("mouseover mouseout",function(){
    $(this).toggleClass("red");
  });

  $("i:contains('sentiment_very_satisfied')").addClass("blue");
  $("i:contains('sentiment_neutral')").addClass("green");
  $("i:contains('sentiment_very_dissatisfied')").addClass("red");

    $('.header__logo.help').on('click', function() {
      $('#overlay, #modalWindow').fadeIn();
    });
    
    $('#close').on('click', function() {
      $('#overlay, #modalWindow').fadeOut();
    });
    
    locateCenter();
    $(window).resize(locateCenter);
  
    function locateCenter() {
      let w = $(window).width();
      let h = $(window).height();
      
      let cw = $('#modalWindow').outerWidth();
      let ch = $('#modalWindow').outerHeight();
     
      $('#modalWindow').css({
        'left': ((w - cw) / 2) + 'px',
        'top': ((h - ch) / 2) + 'px'
      });
    }

});

//   var ctx = document.getElementById("myChart").getContext('2d');
//   var myChart = new Chart(ctx, {
//       type: 'bar',
//       data: {
//           labels: [1,2,3,4,5],
//           datasets: [{
//               label: "サンプル",
//               data: [1,2,3,4,5],
//               backgroundColor: 'rgba(255, 99, 132, 1.0)',
//               borderColor: 'rgba(255, 50, 132, 1.0)',
//               fill: false
//           }]
//       },
//       options: {
//           title:  {
//             display: true,
//             text: "タイトル"
//           }
//       }
//   });

  
//   var labelplugin = {
//     afterDatasetsDraw: function (chart) {
//     }
//   }  
//   var ctx = document.getElementById("myChart1").getContext('2d');
//   var myDoughnutChart = new Chart(ctx, {
//     type: 'doughnut',
//     data: {
//       datasets: [{
//         data: [55, 30, 10, 5],
//           backgroundColor: ['#FFC20F','#172343','#DCE9F5','#EDF4FA']
//        }],
//     },
//     options: {
//       cutoutPercentage: 56,  //円の中心からどのくらい切り取るか
//       animation: {animateRotate: false},
//       tooltips: {enabled: false}
//     },
//     plugins: labelplugin,
//   });




