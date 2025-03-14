pragma solidity ^0.8.0;
contract Test {
    uint public id = 0;
    constructor () { }
    function setID(uint _id) public { id = _id; }
    function setID() public { id++; }
}
```
