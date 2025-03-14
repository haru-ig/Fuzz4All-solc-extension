pragma solidity ^0.8.0;
contract Caller {
    uint256 internal counter;
    function incrementCounter() public ifValidZ returns (uint256) {
        counter++;
        return counter;
    }
    function printCounter() public returns (uint256) {
        return counter;
    }
}
