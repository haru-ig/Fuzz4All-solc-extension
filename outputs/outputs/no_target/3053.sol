pragma solidity ^0.8.0;
contract first {
    function f() public pure returns (uint) {
        return 123;
    }
}
contract second{
    uint private num;
    function f() public pure returns (uint) {
        num = 123;
        num = 124;
        uint _num = num + first.g();
        uint y = _num = num + int(first.g()) + (uint8(first.f()));
        num = y = 123;
        num = num;
        return num;
    }
}
