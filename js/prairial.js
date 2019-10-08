// Prairial JS

(function() {
  // Filtres catalogue
  var $container = $(".revues-container");
  var $items = $(".revue");
  var transitionDuration = 200;
  var timer;

  function updateFilters() {
    $container.addClass("loading");
    window.clearInterval(timer);
    timer = window.setInterval(function() {
      updateRevues();
      updateUi();
      $container.removeClass("loading");
    }, transitionDuration);
  }

  function updateRevues() {
    var selectedTags = [];
    $(".filter-control").each(function () {
      if (!this.value) return;
      selectedTags.push(this.value);
    });

    if (selectedTags.length === 0) {
      $items.removeClass("hidden");
      return;
    }

    $items.each(function () {
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