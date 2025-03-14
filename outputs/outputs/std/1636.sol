pragma solidity ^0.8.0;
contract ArrayAccessApp2 {
    function getElement(Address[] memory _array, uint _index) internal view returns (address element) {
        element = _array[1];
    }
}
