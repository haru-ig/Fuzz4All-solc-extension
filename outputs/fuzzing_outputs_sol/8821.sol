pragma solidity ^0.8.0;
contract Mutator {
    uint256 public constant value = 15;
    function() external payable {
        value -= 1;
    }
}
