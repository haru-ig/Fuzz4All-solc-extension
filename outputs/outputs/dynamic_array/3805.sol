pragma solidity ^0.8.0;
contract C {
    bytes20[] memory b;
    function createsArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < 2 ; i++) {
            array.push(bytes20(1));
        }
        return true;
    }
}
