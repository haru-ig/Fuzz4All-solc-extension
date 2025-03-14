pragma solidity ^0.8.0;
contract MyMemory {
    uint256[] public array;
    function getArrayAddress(uint256[] memory _array) public pure returns (address) {
        uint256 arrayLength = _array.length;
        for (uint256 i = 0; i < arrayLength; i++) {
            if (i == arrayLength - 1) {
                return address(_array[i]);
            }
        }
    }
}
