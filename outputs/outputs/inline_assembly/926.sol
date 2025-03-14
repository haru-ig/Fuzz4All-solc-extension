pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() internal pure returns(uint) {
        _increment();
        return _increment;
    }
    function increment() public pure returns(uint) {
        Incrementer.increment();
        return _increment;
    }
    uint private _increment;
}
