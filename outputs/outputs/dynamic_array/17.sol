pragma solidity ^0.8.0;
contract B {
    uint256[][] public bArray;
    constructor() public {
        bArray.push([]);
    }
    function setBArray(uint256[] memory _array) internal {
        for (uint256 i = 0; i < _array.length; ++i) {
            bArray.push(_array[i]);
        }
    }
}
