$(function(){

  $(".blue.emotion").click(function(){
    // "success" "warning" "error" "info" の４種類のアイコンがある
    Swal.fire({
      type:"success",
      title: "満足行く支出でした！",
      text: "みんなで80%を目指しましょう！",
    });
  });

  $(".green.emotion").click(function(){
    // "success" "warning" "error" "info" の４種類のアイコンがある
    Swal.fire({
      type:"info",
      title: "必要な支出でした",
      text: "出来るだけ減らす方法を考えよう！",
    });
  });

  $(".red.emotion").click(function(){
    // "success" "warning" "error" "info" の４種類のアイコンがある
    Swal.fire({
      type:"warning",
      title: "やっちゃいました..",
      text: "後悔しない買い物をしよう！",
    });
  });


});

