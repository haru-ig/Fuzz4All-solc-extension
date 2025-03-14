pragma solidity ^0.8.0;
contract Counter {
    uint public i = 0;
    function increment() public pure returns (uint) {
        _increment();
        return i;
    }
    function _increment() pure internal {
        i += 1;
    }
}

pragma solidity ^0.8.0;
