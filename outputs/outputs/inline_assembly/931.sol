pragma solidity ^0.8.0;
contract Empty {}
contract Incrementer {
    function increment_internal() internal pure returns {
        return _increment;
    }
    function increment() public pure returns {
        Incrementer.increment();
        _increment += 1;
    }
    uint _increment = 0;
}
