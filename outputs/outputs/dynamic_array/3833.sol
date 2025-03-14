pragma solidity ^0.8.0;
contract C {
   assembly{
        bytes20 memory _memory
    }
    function modifiesArray(bytes20 memory array) public pure returns (bool) {
        uint256 size = 1;
        for(uint256 i = 0 ; i < size ; i++) {
            array[i] = bytes20(0);
        }
    }
}
