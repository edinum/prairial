// Prairial JS

// Filtres catalogue
function updateFilters () {
  var selectedTags = [];
  $(".filter-control").each(function () {
    if (!this.value) return;
    selectedTags.push(this.value);
  });

  if (selectedTags.length === 0) {
    $(".revue").removeClass("hidden");
    return;
  }

  $(".revue").each(function () {
    var tags = $(this).attr("data-tags").split(",");
    var keepVisible = selectedTags.every(function (value) {
      return tags.indexOf(value) > -1;
    });    
    $(this).toggleClass("hidden", !keepVisible);
  });

  $(".revues-aucun-resultat").toggleClass("hidden", $(".revue:not(.hidden)").length > 0);
}

$(function() {
  updateFilters();
  $(".filter-control").on("change", updateFilters);
});