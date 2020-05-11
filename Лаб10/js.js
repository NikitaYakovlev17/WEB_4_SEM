function readFile(object) {
    var file = object.files[0]
    var reader = new FileReader()
    reader.onload = function() {
        var parser = new DOMParser();

        // XMLDocument object:
        var doc = parser.parseFromString(reader.result, "text/xml");
        console.log(reader.result);
        var result = doc.getElementsByTagName("element")[0].innerHTML; //.getElementsByTagName("firstName");
        var result1 = doc.getElementsByTagName("element")[1].innerHTML;
        var result2 = doc.getElementsByTagName("element")[2].innerHTML;
        var result3 = doc.getElementsByTagName("element")[3].innerHTML;
        var result4 = doc.getElementsByTagName("element")[4].innerHTML;

        document.getElementById('out').innerHTML = result;
        document.getElementById('out2').innerHTML = result1;
        document.getElementById('out3').innerHTML = result2;
        document.getElementById('out4').innerHTML = result3;
        document.getElementById('out5').innerHTML = result4;

        let arr = new Array(result, result1, result2, result3, result4);
        arr.sort(function(a, b){return a - b});
        document.write(arr);

    }
    reader.readAsText(file)

}