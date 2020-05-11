<!DOCTYPE html>
<html>
    <head>
        <title>Lab3</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script>
$.post(
  "post_test1.php",
  {
    param1: 5,
    param2: 10
  },
  onAjaxSuccess
);

$.post(
  "post_test2.php",
  {
    text: 'Text'
  },
  text
);

$.post(
  "post_test3.php",
  {
    par1: 5,
    par2: 10

  },
  function (data)
  {
    $('#test3').html(data);
  }
);

function text(data)
{
  $('#test2').html(data);
}

 
function onAjaxSuccess(data)
{
  $('#test1').html(data);
}
</script>
</head>
<body>
<div id="test1" ></div>
<div id="test2" ></div>
<div id="test3" ></div>
</body>
</html>