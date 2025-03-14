pragma solidity ^0.8.0;
contract Test {
    function findMax(uint[] memory a) public view returns (uint max) {
        if (a[0] < a[1]){
            max = a[0];
        } else {
            max = a[1];
        }
        return max;
    }
}
