pragma solidity ^0.8.0;
contract Comp2 {
    uint _increase;
    constructor() payable {

    }
    function setIncrease() public {
        _increase += 2;
    }


    function getIncrease() returns(uint) {
        return _increase;
    }
}

```
