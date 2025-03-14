pragma solidity ^0.8.0;
contract ArrayAccessApp3 {
    function getElement(address[]? memory _array, uint _index) public view returns (address element) {
        element = _array[_index];
    }
}
