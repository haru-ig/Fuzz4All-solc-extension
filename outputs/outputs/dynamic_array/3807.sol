pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;

    function modifiesArray(bytes20[],uint256) public pure returns (bool) {
        return false;
    }
}
