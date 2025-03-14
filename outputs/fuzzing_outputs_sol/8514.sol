pragma solidity ^0.8.0;
contract CallerExample8 {
    uint x = 42;
    function subtract(uint y, uint x) public pure returns(uint z) {
        z = y - x;
    }
    function add() public pure returns(uint z) {
        z = x + subtract(y, x);
    }
    function mul() public pure returns(uint z) {
        z = x * subtract(y, x);
    }
    function div() public pure returns(uint z) {
        z = x / subtract(y, x);
    }
}
