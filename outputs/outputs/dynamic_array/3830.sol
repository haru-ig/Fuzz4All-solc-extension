pragma solidity ^0.8.0;
contract C {
    bytes20[] public b;
    constructor () public {
        b.push();
    }
    function modifiesArray(bytes20[] memory array, bool flag) public pure onlyModifiesArrayFlagCheck (flag) pure returns(bool) {
        uint256 size = array.length;
        require(array.length == size);
        for(uint256 i = 0 ; i < size ; i++) {
            if(flag) array[i] = bytes20(0);
        }
    }
}
