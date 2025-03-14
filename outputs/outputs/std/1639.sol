pragma solidity ^0.8.0;
contract ArrayAccessApp2 {
    function getElement(address[] memory _array, uint _index) internal view returns (address element) {
        element = address(uint8(_array[_index]));
    }
}
