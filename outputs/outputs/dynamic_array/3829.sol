pragma solidity ^0.8.0;
contract C {
    bytes20 public b;
    constructor () public {
        b.push();
    }
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        uint256 size = array.length;
        uint256 count = 0;
        for(uint256 i = 0 ; i < size ; i++) {
            if (array[i] == bytes20(0))
                count++;
        }
        for(uint256 i = size - 1 ; i >= 0 ; i--) {
            if(array[i] == bytes20(0)) {
                count++;
                array[i] = bytes20(10);
            }
        }
        return count == size;
    }
}
