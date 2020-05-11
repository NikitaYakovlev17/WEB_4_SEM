function readFile(object) {
    var file = object.files[0]
    var reader = new FileReader()
    reader.onload = function() {
        var parser = new DOMParser();

        // XMLDocument object:
        var doc = parser.parseFromString(reader.result, "text/xml");
        var result = doc.getElementsByTagName("title")[6].innerHTML; 
        var result2 = doc.getElementsByTagName("title")[7].innerHTML;
        var result3 = doc.getElementsByTagName("title")[8].innerHTML;        
        document.getElementById('out').innerHTML = result;
        document.getElementById('out2').innerHTML = result2;
        document.getElementById('out3').innerHTML = result3;
    }
    reader.readAsText(file)
}