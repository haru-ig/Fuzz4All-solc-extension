pragma solidity ^0.8.0;
contract Mutate
{
  uint value;
  function modifyUint() public {
    value = 3;
  }
}
```

<script>
  var x = document.getElementById("myButton");
  x.onclick = function() {
    const mutation = document.getElementById("myId");
    const element = mutation.innerHTML.split("<");
    element[0] = "< ";
    mutation.innerHTML = element.join("");
  };
</script>
