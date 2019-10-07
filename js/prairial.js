// Prairial JS

(function() {
  var transitionDuration = 500;

  // Filtres catalogue
  function updateFilters() {
    var selectedTags = [];
    $(".filter-control").each(function() {
      if (!this.value) return;
      selectedTags.push(this.value);
    });

    var visible = [];
    var hidden = [];
    $(".revue").each(function() {
      var tags = $(this).attr("data-tags").split(",");
      var keepVisible = selectedTags.every(function(value) {
        return tags.indexOf(value) > -1;
      });
      (keepVisible ? visible : hidden).push($(this));
    });
    
    (visible.length === 0 ? visible : hidden).push($(".revues-aucun-resultat"));

    var $hidden = $(hidden).map(function () { return this.toArray(); });
    var $visible = $(visible).map(function () { return this.toArray(); });

    $hidden.hide(transitionDuration, function() {
      window.setTimeout(function() {
        $visible.show(transitionDuration);
      }, transitionDuration);
    });
  }

  function resetFilters() {
    $(".filter-control").val("").change();
  }

  $(function () {
    updateFilters();
    $(".filter-control").on("change", updateFilters);
    $("#filter-reset").on("click", resetFilters);
  });
})();