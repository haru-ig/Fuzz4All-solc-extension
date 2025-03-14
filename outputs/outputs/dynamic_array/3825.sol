pragma solidity ^0.8.0;
contract C {
    bytes20[] public b;
    constructor () public {
        require(b, "b");
    }
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        uint256 size = array.length;
        for(uint256 i = 0 ; i < size ; i++) {
            assert(array[i]!= bytes20(0));
        }
    }
}
