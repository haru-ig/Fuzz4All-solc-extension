pragma solidity ^0.8.0;
contract Mutability {
  uint public value = 1000;
  uint public constant ZERO = 0;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _index) public {
   value += _index;
   value = ZERO;
 }
 function setNewValue (uint _newValue, uint _index) public {
   value += _index;
   value = ZERO;
   value += _newValue;
 }
}
```
</details>
