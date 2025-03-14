pragma solidity ^0.8.0;
contract ArrayAccessApp2 {
    function getElement(address memory _array, uint _index) public view returns (uint, uint) {
        (uint, uint) memory memoryTuple = (0, 0);
        return (memTuple[0], memTuple[1]);
    }
}
