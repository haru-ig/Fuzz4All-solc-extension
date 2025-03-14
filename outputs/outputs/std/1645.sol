pragma solidity ^0.8.0;
contract ArrayAccessApp {
    uint public uintArrayLength;
    address[] public uintArray;

    function getUintArrayLength() public view returns (uint length) {
        return uintArrayLength;
    }

    function getUintArray() public view returns(address[] memory _array){
        return uintArray;
    }

    function setUIntArray() public {
        uintArray = new address[](0);
    }

    function addElement(uint _index, uint _value) public {
        if (uintArrayLength == 0) {
            uintArrayLength = _index;
        }
        uintArray.push(_value);
    }

    function removeElement(uint _index) public {
        if (uintArrayLength == 0) {
            uintArrayLength = 0;
        }
        uintArray.length[_index] = 0;
        uintArrayLength -= 1;
    }

    function setUintArrayLength() external {
        uintArrayLength += 1;
    }

    function displayArray() public {
        for (uint x = 0; x < uintArrayLength; x++){
            uint value = uintArray[x];
            int value_displayed = value.toI();
            print(value_displayed);
            print(",");
        }
    }

    function getElement(uint _index) public view returns(uint) {
        uint x = uintArray[_index];
        return x;
    }
}
