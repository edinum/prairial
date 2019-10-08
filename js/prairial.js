// Prairial JS

(function() {
  // Filtres catalogue
  var $container = $(".revues-container");

  function updateFilters() {
    $container.addClass("loading");
    
    // FIXME: ajouter un systeme de queue pour pas que le loading se bloque quand on défile trop vite avec le clavier
    $container.one("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", function (e) {
      updateRevues();
      updateUi();
      $container.removeClass("loading");
    });
  }

  function updateRevues() {
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
  }

  function updateUi() {
    var visibleLength = $(".revue:not(.hidden)").length;
    var hiddenLength = $(".revue.hidden").length;
    $(".revues-aucun-resultat").toggleClass("hidden", visibleLength > 0);
    $("#filter-reset").toggleClass("hidden", hiddenLength === 0);
  }

  function resetFilters() {
    $(".filter-control").val("").change();
  }

  $(function () {
    resetFilters();
    $(".filter-control").on("change", updateFilters);
    $("#filter-reset").on("click", resetFilters);
  });
})();