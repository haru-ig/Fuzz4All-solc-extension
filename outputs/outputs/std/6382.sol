pragma solidity ^0.8.0;
contract Mutator {
  uint256 public constant initialValue = 10;

  mapping (uint256 => uint256) public settableValues;
  constructor() {



    setNumber(0, initialValue);

    setNumber(1, initialValue);
  }
  function setNumber(uint256 _index, uint256 _number) public {

    settableValues[_index] = _number;



    settableValues[_index] = _number;

    try {
      mutatorCaller.update(bytes32("setNumber"), _index, _number);
    } catch (bytes32 error) {
        emit Error (uint256(error));
    }


  }
}
contract MutatorCaller {

  function update(bytes32 _contractMethodName, uint256 _key, uint256 _newValue) public {


    require(contractWhitelist[msg.sender]);
