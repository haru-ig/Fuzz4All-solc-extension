pragma solidity ^0.8.0;
contract MutationTest {

    uint32 randomNumber;
    uint32 arrayOfRandomNumbers;
    function setArray(uint32 _numberOfRandomNumbers) public {
        uint32 numberOfRandomNumbers = _numberOfRandomNumbers;
        for (uint32 i = 1; i <= numberOfRandomNumbers; i++) {
            uint number = getRandomNumber();
            set(arrayOfRandomNumbers, i, number);
        }
    }
    function generateRandomNumber() public view returns (uint) { return (uint(keccak256(abi.encodePacked(blockhash(block.number - 3), uint(blockhash(block.number)))[:])) % 99999) + 61; }
    function getRandomNumber() public view returns (uint) { return randomNumber; }
    function setNumber(uint32 _value) public { randomNumber = _value; }
    function getNumber(uint32 _index) public view returns (uint) { return arrayOfRandomNumbers; }
    function set(uint32 _index, uint _value) public {
        arrayOfRandomNumbers = setByIndex(_index, _value, arrayOfRandomNumbers);
    }
    function setByIndex(uint32 pos, uint newValue, uint arrayValue) public pure returns(uint) {
        uint[] storage newArray = new uint[](arrayValue.length);
        for (uint i = 0; i < newArray.length; i++) {
            newArray[i] = arrayValue[i];
        }
        newArray[pos] = newValue;
        return (newArray[pos]);
    }
}
