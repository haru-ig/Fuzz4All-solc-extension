pragma solidity ^0.8.0;
contract T4E {
    uint i1 = 0;
    uint256 i2 = 0;
    uint256[] array;
    uint256 length = 0;
    function add(uint256 x) public {
        length += 1;
        if (length > 100000) {
            array.length;
        }
        array[length] = x;
    }
}
