pragma solidity ^0.8.0;
library Incrementer {
    function increment_internal() internal returns (uint) {
        return _increment;
    }
    function increment() public pure returns(uint) {
        return _increment;
    }

    uint private constant _increment = 1;
}
