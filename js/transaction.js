
  document.getElementById("print").addEventListener("click", () => {
    const printtable = this.document.getElementById("printdivcontent");
    var opt = {
      margin: 1,
      filename: "filename.pdf",
      image: { type: "jpeg", quality: 1 },
      html2canvas: { scale: 2 },
      jsPDF: { unit: "in", format: "letter", orientation: "portrait" },
    };
    html2pdf().from(printtable).set(opt).save();
  });



$("#search").on("keyup", function () {
  var value = $(this).val();

  $("table tr").each(function (index) {
    if (index !== 0) {
      $row = $(this);

      var id = $row.find("td:first").text();

      if (id.indexOf(value) !== 0) {
        $row.hide();
      } else {
        $row.show();
      }
    }
  });
});