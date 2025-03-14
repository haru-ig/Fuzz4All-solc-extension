pragma solidity ^0.8.0;
contract NotMutatingContract {
    uint256[] memory array;

    function notMutatedFunction(uint256[] memory a) public pure {
        a = array;
    }
}
