pragma solidity ^0.8.0;
contract DModified {
    uint16[]  a;
    constructor() {}
    function f() public {
        a;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint16[3][40]  a;
    constructor(uint16 b) {}
    function f() public {
        a[2][3];
    }
}
