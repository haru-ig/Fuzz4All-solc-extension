pragma solidity ^0.8.0;
contract ArrayAccessApp1 {
    function setElement(address[] memory _array, address _element, uint _index) public {
        require(_array.length > _index, "elementIndexTooHigh");
        _array[_index] = _element;
    }
}
