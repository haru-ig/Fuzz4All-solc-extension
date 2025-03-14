pragma solidity ^0.8.0;
contract Test {
    function findMin(uint[] memory a) public view returns (uint min) {
        return a.length == 0? 0 : a[0];
    }
}
