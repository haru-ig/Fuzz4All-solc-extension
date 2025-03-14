pragma solidity ^0.8.0;
contract E {
    uint x = 10, z = 2, ky = 3, w = 4;
    function foo() public {
        x = z * x + ky;
        w = x * w / 10;
    }
}



pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public ky;
    uint public w;
    function foo() public view {
        x = z * x + ky;
        w = x * w / 10;
    }
}
