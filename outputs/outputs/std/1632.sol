pragma solidity ^0.8.0;
contract ArrayAccessApp1 {
    function getElement(address[] memory _array, uint _index) internal view returns (address element) {
        element = _array[_index];
    }
}
