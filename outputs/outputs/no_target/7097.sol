pragma solidity ^0.8.0;
contract Test1 is Test {
    uint public id;
    uint public myUintStorage;
    uint public myUint;
    constructor () { id = 0; }
    function setID(uint _id) public { id = _id; }
    function setMyUint(uint _value) public {
        myUintStorage = _value;
        myUint = _value;
    }
}
```
