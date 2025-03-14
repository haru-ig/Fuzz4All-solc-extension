pragma solidity ^0.8.0;
contract C {
    bytes20[1] b;
    bytes20 b2;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        array.push(b2);
        if (!modifiesArray(array))
            return false;
        for (uint256 i = 0 ; i < array.length ; i++) {
            b2 = array[i];
            if (i == 0) {
                return false;
            }
        }
        return true;
    }
}
