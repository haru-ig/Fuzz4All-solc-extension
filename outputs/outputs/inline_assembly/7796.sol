pragma solidity ^0.8.0;
contract L2 {
    uint x;
    uint y;
    uint z;
    constructor() public {
        x = 1;
        y = 2;
        z = 3;
    }
}
contract L3 {
    uint x = 4;
    uint y = 5;
    uint z = 6;
    function modifier() public payable {
        x += 10;
    }
}
contract L4 {
    uint constant x = 7;
    uint constant y = 8;
    uint constant z = 9;
    constructor(L3 L) public payable {
    }
    function modifierWithPayable() public constant {
        x += 20;
    }
}
contract L5 {
    uint constant x = 10;
    uint constant y = 11;
    uint constant z = 12;
    function modifierWithPayableAndVariable() public constant {
        x += 30;
    }
}
```
