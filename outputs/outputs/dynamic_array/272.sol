pragma solidity ^0.8.0;
contract C9 {
    constructor (uint256 x, uint256 y) {}
    modifier m() {
        selfdestruct(msg.data);
        return;
    }
    function f(uint256 x) public m {
        uint256 _x = x + msg.data.length;
        for(uint256 i = 0 ; i < 1 ; i = 100) {
            _x =  x + c(i, x) + msg.data.length;
        }
        for(uint256 i = 0 ; i < 1 ; i = 100) {
            _x =  x + c(i, x) + _x;
        }
        for(uint256 i = 0 ; i < 1 ; i = 100) {
            _x = x + c(i, x) + msg.data.length;
        }
    }
    function c(uint256 x, uint256 y) public pure returns (uint256) {
        return x * y;
    }
}
