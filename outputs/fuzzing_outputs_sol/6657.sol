pragma solidity ^0.8.0;
contract Fallback {
    function mutated() public pure returns (uint) {
        return 100;
    }
    receive() external {
    }
}
