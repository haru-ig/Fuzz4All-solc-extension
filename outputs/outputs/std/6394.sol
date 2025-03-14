pragma solidity ^0.8.0;
contract MutateGeneration {
  uint internal index;
  uint[] private generation;
  uint256 private value;
  constructor() {


    value += generateRandomNumber();
  }


  function generateRandomNumber() public pure returns (uint) {


    uint multiplier = 1;
    while (multiplier <= 9) {

      uint currentMultiplier = multiplier;
      multiplier *= 3;


      if (multiplier == currentMultiplier) {

        return multiplier;
      }
    }

    return 0;
  }


  modifier beforeMutation(uint256 _value) {

    require(false);
    _;
  }


  function mutate() public beforeMutation(value) {

    uint i = generateRandomNumber();
    generation[i] = index;
    index = i;

    uint256 newValue = generateRandomNumber();
    value += newValue - generateRandomNumber();

    emit mutate(value);
  }



  function mutateIn(uint _from) public pure {
    uint _to = generation[_from];

    emit mutation(_from, _to);
  }

  event mutate(uint64 element);

  function _testInvalid(uint a) public pure {

    uint multiplier = 1;
    while (!a & (multiplier <= 9)) {



      if ((2 << multiplier) == multiplier){
        return;
      }
      multiplier*=3;
    }

  }
}
