pragma solidity ^0.8.0;
contract SemanticTest {
    function getIndex(uint _i) public view returns (uint) {
        return myArray [_i];
    }
    function setIndex(_i, uint _value) public {
        myArray [_i] = _value;
    }
    function addIndex() public {
        myArray = myArray.add(1);
    }
}
