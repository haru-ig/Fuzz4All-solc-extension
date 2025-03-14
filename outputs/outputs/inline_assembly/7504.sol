pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y = 0;
    uint z;
    function simple(uint _x) public {
        require(_x == 0, "Input must be 0");
        z = _x;
        y = _x + x;
    }
    modifier not_zero(uint _x) {
        x = _x;
        y = _x + x;
        _;
    }
}
contract Example {
    uint x = 1;
    uint y = 1;
    uint z;
    modifier one_less(uint _x) {
        x = _x;
        y = _x + x;
        _;
    }
}
contract Example {
    uint x = 1;
    uint y = 1;
    modifier two_less {
        y = x > 1? 1 - (x - 2) : 0;
        x =  1 - (x - 2);
        _;
    }
}
contract Counter {
    uint public i = 0;
    uint public j = 0;
    uint public k = 0;
    function plus() public pure returns (uint) {
        i--;
        j -= (i + k) >> 16;
        k = 0;
        return (i << 16) + (j >> 16);
    }

}
contract Example {
    uint x = 2;
    uint y = 3;
    uint z;
    uint a;
    uint b;
    uint c;
    uint e;
    bool flag;
    uint[] a_arr;
    function simple(int256 _x, uint256[35] memory _y) public pure returns (uint, bool) {
        a = uint(keccak256("\x1f\x8b\x08\x00"));
        b = uint(keccak256("\x1f\x8b\x08\x01"));
        c = uint(keccak256("\x1f\x8b\x08\x02"));
        e = uint(keccak256("\x1f\x8b\x08\x03"));
        flag = (_x & 0xFF00000000000000) == (1 << 49);
        x = uint(_x);
        z = keccak256(abi.encodePacked((_x << 24) & uint(0xFFFFFFFFFFFFFFFF), _y));
        y = uint(keccak2
