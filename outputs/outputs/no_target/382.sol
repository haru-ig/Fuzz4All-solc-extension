pragma solidity ^0.8.0;
contract Semantic2 {
    uint256 public lastBalance;
    constructor(uint256 _x) public {
        lastBalance = _x;
    }
    function balance(uint a) public view returns (uint) {
        lastBalance = a;
        return lastBalance;
    }
    function b1(uint _y) public pure nonpayable returns (bool) {
        return true;
    }
    function b2(uint24 x, uint32 _a, uint32 y, uint32 _b) public pure nonpayable returns (bool) {
        return _y == _a + _b;
    }
    function b3(uint32 b) public pure nonpayable returns (uint32) {
        return b;
    }
    function b4(uint160 _val) public pure nonpayable returns (uint160) {
        lastBalance = _val;
        return _val;
    }
    function b5(uint200 a) public pure nonpayable returns (uint200) {
        lastBalance = a;
        return a;
    }
    modifier ppm(uint256 x) {
        assert(lastBalance >= x);
        lastBalance -= x;
        _;
    }
    function b6(uint _c) private view nonpayable returns (uint[] memory) {
        uint[] memory a;
        a.length = 2;
        a[0] = _c;
        _;
    }
    function b7(uint160 b, uint28 _b, address _addr) private view nonpayable returns (uint160) {
        lastBalance = b;
        return b;
    }
    function b8(uint _i) private pure nonpayable returns (uint) {
        return uint(_i);
    }
}
