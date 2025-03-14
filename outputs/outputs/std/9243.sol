pragma solidity ^0.8.0;

contract MutatingContract {
    function mutatedFunction(uint256[] memory a) public pure {
        a[0] = 2;
    }
}
