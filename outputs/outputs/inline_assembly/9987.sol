pragma solidity ^0.8.0;
library L {
    function test(uint8 a, uint8 b) internal pure returns (uint8 x) {
        return a + b;
    }
}
contract I{
    uint8 a;
    address addr;
    function setA() public {
        a = 1;
    }
}
contract G {
    using L for uint8;

    uint8 i;
    uint8 x;

    constructor() public {
        x = 888;
        i = I(0xaaaaaaaa).test(1, x);
    }

    function func(uint8 a, uint8 b, uint8 c) public {
        x = b;
        x = test(a + 1, x);
        x = c + x + x;
        x = L.test(1, x);
        x += L.test(2, x);
        x += x;
        x += x;
        i = x;
    }

    function test(uint8 a, uint8 b) internal pure returns (uint8) {
        return a;
    }
}
