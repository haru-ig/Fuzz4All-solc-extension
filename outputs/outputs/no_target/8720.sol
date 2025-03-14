pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV01 {
    uint x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        x *= 2;
    }
    uint public static y;
}
