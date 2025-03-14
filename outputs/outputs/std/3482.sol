pragma solidity ^0.8.0;
contract Mutagenis {
    function addToArray(uint[] memory _arr, uint _x) public pure {
        _arr.push(_x);
    }
}
