pragma solidity ^0.8.0;
contract Mutator8 {
    uint256 a = 2;

    function add() private view returns (uint) {
        a += 1;
    }

    uint256 public incrementDelay = 0;

    function() private returns (uint) {
        incrementDelay = incrementDelay + incrementDelay;

        return a;
    }
}
