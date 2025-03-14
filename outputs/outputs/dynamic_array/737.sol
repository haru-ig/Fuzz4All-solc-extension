pragma solidity ^0.8.0;
contract test279 {
    uint56[10] b;
    function test(uint _b) public {
        while (_b > 9) a = _b;
        while (_b > 8) a = _b;
        while (b[7] * b[6] == _b && _b > 7) b[6] = b[6] * 2;
        while ((b[2] * b[5]) == _b && _b > 4) b[5] = b[5] + _b;
        while ((b[3] +(uint160)[1](b[2] * b[5])) == (((uint256) b[5] << 16) +(uint256) b[2] * b[5]) / ((uint256) b[3]) && _b > 3) b[3] = b[2];
    }
}


pragma solidity ^0.8.0;
contract test280 {
    function test() public {
        (address a, uint b, bytes memory c,) = decodeNestedAddress(hex"8423820e608259f082590c0160ce60820b820b60dd60528061002060fe602380620ae8c8561a31b82049355
