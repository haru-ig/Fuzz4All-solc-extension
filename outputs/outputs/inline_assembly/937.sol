pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() public pure returns(uint) {
        return _increment;
    }
    function increment() public pure returns(uint) {
        IncrementerIncrement();
        return _increment;
    }
    uint private constant _increment = 1;
}
