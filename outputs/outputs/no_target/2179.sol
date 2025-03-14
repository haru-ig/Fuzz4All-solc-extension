pragma solidity ^0.8.0;
contract Modifications3_SEM8_2 {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
    }
    function f() public returns (uint256) {
        uint8[] f = a > 0? new uint8[](2) : new uint8[](1);
        f[0] = 2;
        return uint256(f.length > 0? uint256(f) + uint256(2) : uint256(a));
    }
    uint public a;
}
contract Modifications3_SEM8_3 {
    constructor(uint256 _x, uint256 _y) public {
        a = _x;
    }
    function f() public returns (uint256) {
        uint8[] f = a > 0? new uint8[](2) : new uint8[](1);
        f[0] = 2;
        return uint256(uint256(f.length > 0? uint256(f) + uint256(2) : uint256(a)));
    }
    uint public a;
}
