pragma solidity ^0.8.0;
contract O {
    uint constant x = 1;
    uint constant y = 2;
    function g(uint256 a, uint256 b) pure internal returns (uint, uint){
        uint c;
        b - a;
        c = b / 54;
        return (a, c);
    }
}


pragma solidity >=0.7.6 <0.8.0;




contract G {
    event H(uint a);
    uint x;
    uint128 constant z;
    uint32 constant aa = 1;
    uint64 constant bb = 2;
    mapping(address => uint256) public wtf;
    uint256 public b;
    mapping(uint => uint256) public map;
    constructor() {
        b = 2;
        uint a = 1;
    }
    function b() public {
        uint a = 1;
        uint256 b;
        b = bytes(a).length;
        b = bytes(a).length;
        b = string("a");
        b = bytesN(1);
        b = bytesN(1);
    }
    function bytesN(uint n) public pure returns (uint256) {
        uint length = bytes(n).length;
        uint256 value = 0;
        for (uint i = 0; i < n; i++) {
            (, value) = g(a, b);
        }
        return value;
    }
    function bytes() public pure returns (uint256) {
        return g(aa, bb);
    }
    function byte1() public pure returns (uint256) {
        return g(aa, bb);
    }
    function h(uint j) public view returns (uint256) {
        return g(a, b);
    }
}
