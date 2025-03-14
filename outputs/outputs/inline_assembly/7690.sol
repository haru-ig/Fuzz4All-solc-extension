pragma solidity ^0.8.0;
contract L20 {
    uint public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;
    enum T {
        E
    }
}
contract V2 {
    function g() public pure returns(uint) {
        return 1024;
    }
    function h() public pure returns(uint) {
        return 2048;
    }
    function f() public pure returns(uint) {
        return L20.value;
    }
    function s() public pure returns(uint) {
        return L20.T.E;
    }
}
