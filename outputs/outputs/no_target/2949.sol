pragma solidity ^0.8.0;
contract third7 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {

        uint i = ~d & b;

        uint i1 = ~uint80(~d) & uint80(b);
        uint i2 = ~uint256(~d) & uint256(b);
        uint i3 = (uint80(~d)) >> 56 & uint80(b);
        uint j = ~d | c;
    }
}
contract third8 {
    address x;
    constructor() public {
        x = unchecked((~uint80(safeAdd(uint256(0),~uint80(0))))) | add(uint64(1e13),uint256(safeDiv(uint256(0),uint256(0)))));
    }
    function add(uint x, uint y) public pure returns (uint) {
    return uint80(x) + uint80(y);
}
    function unsafeAdd(uint x, uint y) public unsafe returns (uint) {
    return uint256(uint80(x)) + uint256(uint80(y));
    }
}
contract third9 {
    constructor(uint x) public {
        assert(x <= 256);
        uint i = ~uint80(x);
        uint j = ~uint80(unchecked(safeSub(uint80(x),uint256(1)))) & 0xffffffff);
    }
}
contract third10 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {

        uint i = ~d & b;

        uint i1 = ~uint80(~d) & uint80(b);
        uint i2 = ~uint256(~d) & uint256(b);
        uint i3 = (uint80(~d)) >> 56 & uint80(b);
        uint j = ~d | c;
    }
}
contract third11 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {

        uint8100 a;

        uint8101 a1 = checked(uint80(c) >> 56 - uint80(b));
    }
}
contract third12 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        /* New
