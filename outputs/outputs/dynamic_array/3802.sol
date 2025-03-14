pragma solidity ^0.8.0;
contract C {
    bytes20[] b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        bytes20 value = array[0];
        array[0] = value;
        if (value.eq(bytes20(0x60))) {
            delete array[0];
            revert("revert");
        }
        return array.length <= 1;
    }
}
