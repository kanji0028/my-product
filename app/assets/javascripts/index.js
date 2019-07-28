$(function() {
  $(".material-icons").on("mouseover mouseout",function(){
    $(this).toggleClass("red");
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

// });



