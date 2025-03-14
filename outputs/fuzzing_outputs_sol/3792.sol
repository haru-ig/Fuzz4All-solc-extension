pragma solidity ^0.8.0;
contract Example17Mutated {
    function example17(uint256 input) public pure {
        uint256 result = input - 1;
        require (result > 0);
    }
    function _mutate(uint256 input) private view {
        uint256 result = input - 1;
        require (result > 0);
    }
}
contract Example17WithFallback {
    uint256 private value;
    function example17() public pure {
        if (value == uint256(-1)) {
            require (msg.value > 0);
            value = Example17._check(msg.value);
        }
    }
}
