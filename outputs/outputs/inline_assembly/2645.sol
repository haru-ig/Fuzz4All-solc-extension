pragma solidity ^0.8.0;
contract D {
    uint public x;
    uint public z;
    uint public w;
    function foo() public {
        x = z * x + w;
        w = x * w / 10;
    }
}
pragma solidity ^0.7.0;
contract D {
    function foo() public {
        uint x = 100;
        uint y = 5000;
        uint w = 10;
        uint z = y * x - w;
        uint h = z / y;
        uint ky = x * h / x;
        x = y * w - ky;
        w = x * w / 10;
        ky = x * h / x;
        x = y * w - ky;
        w = x * w / 10;
    }
}
