pragma solidity ^0.8.0;
contract A {
    uint8 i;
    constructor () {
        i = L.f(uint8(-2**(uint256(128)))-uint8(2**(uint256(-128)))+uint8(-2**(uint256(128)))-uint8(2**(uint256(-128))))-(uint8(127)-uint8(2**(uint256(128)))-uint8(2**(uint256(-128))))+(uint8(127)-uint8(2**(uint256(128)))-uint8(2**(uint256(-128))))+uint8(128));
    }
    function g(uint8 a, uint8 b) internal pure returns (uint8 c)
    {
        c = a + b;
    }
}
