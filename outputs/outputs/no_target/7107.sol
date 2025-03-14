pragma solidity ^0.8.0;
contract Test {
    constructor (uint) public {
        require(id == 0, "TEST");
   }
   function getID() public returns (uint) { return id; }
   function setID(uint) public { id++; }
}
```
```
0x990590b298550fe5be512ac0be07ac3604f1ea0ee6b20156a14548b61f13e8a0
```
