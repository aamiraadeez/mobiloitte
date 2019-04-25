function a(data,id)
{
Highcharts.chart('container1', {
    xAxis: {
        categories: fname
    },
    yAxis: {
        min: 0
    },
    title: {
        text: 'Show User ID'
    },
    series: [{
        type: 'line',
        name: 'User',
        data: id,
        marker: {
            enabled: true
        },
        states: {
            hover: {
                lineWidth: 0
            }
        },
        enableMouseTracking: true
    }]
});
}