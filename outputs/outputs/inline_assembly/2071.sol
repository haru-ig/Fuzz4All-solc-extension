pragma solidity ^0.8.0;


uint constant numTimes10 = 10;
uint constant numTimes100 = 100;

uint numTimes10 = 10;

mapping (uint => uint) public myMap;
function change(uint v) public
{
  myMap[v] += 1;
}


contract Test
{
    function get() public pure {
      change(numTimes10);
    }
}
```
## Congratulations!
You have just created your first Solidity contract. It is a standard simple Solidity contract, but it is quite useful to be used as a template to construct complex business logic. Now go and implement additional features as needed.
