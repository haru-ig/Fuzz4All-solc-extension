pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    function foo() public {
        x = x * z + ky;
        w *= x;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    constructor() public {
        z = ky ^ x * (1e18 - 1);
        w = x * w / 10;
        x = y * z + ky;
    }
}
