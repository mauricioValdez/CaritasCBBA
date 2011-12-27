window.addEvent("domready", function() {
    new iCarousel("example_3_content", {
        idPrevious: "example_3_previous",
        idNext: "example_3_next",
        idToggle: "undefined",
        item: {
            klass: "example_3_item",
            size: 86
        },
        animation: {
            duration: 1000,
            amount: 4
        }
    });
});
   // Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
