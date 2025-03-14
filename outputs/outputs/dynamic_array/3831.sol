pragma solidity ^0.8.0;
contract C {
    bytes[] public b;
    constructor () public {
        b.push();
    }
    function modifiesArray(bytes[] memory array) public pure returns (bool) {
        for(uint256 i = 0; i < array.length; i++) {
            if (array[i]!= 0) return false;
        }
        return true;
    }
}
