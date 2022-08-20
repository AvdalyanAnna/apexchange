const {active, none, fix} = {
    active: 'active',
    none: 'd-none',
    fix: 'fix'
}


const tabPanels = $('.tab-pane');
const allHrefs = $('a[data-toggle="tab"]');

allHrefs.on('click', function (e){
    e.preventDefault()
    const id = $(this).attr('href').replace(/#/g, '');
    const tabPanel = $(`.tab-pane[id=${id}]`);

    tabPanels.removeClass(active);
    allHrefs.removeClass(active);

    $(this).addClass(active);
    tabPanel.addClass(active);
})