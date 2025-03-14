pragma solidity ^0.8.0;
library C {
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < array.length ; i++) {
            bytes20 mem = array[i];
        }
        return true;
    }
}
