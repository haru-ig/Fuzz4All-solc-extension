pragma solidity ^0.8.0;
import "./Mutator.sol";
contract Fibtor {
  Mutator public MutatorContract;
  constructor() {
    MutatorContract = new Mutator();
  }
  function fibtor(uint256 _index) public view returns(uint256) {
    if (_index == 0) {
      return 1;
    }

    returnMutatorValues(_index - 1, _index - 2);
    returnMutatorValues(_index - 2, _index - 1);
    returnMutatorValues(_index - 1, _index);
    returnMutatorValues(_index, _index + 1);
    returnMutatorValues(_index + 1, _index + 2);
    returnMutatorValues(_index + 2, _index + 3);
    returnMutatorValues(_index + 3, _index + 4);
    returnMutatorValues(_index + 4, _index + 5);
    returnMutatorValues(_index + 5, _index + 6);
    returnMutatorValues(_index + 6, _index + 7);
    returnMutatorValues(_index + 7, _index + 8);
    returnMutatorValues(_index + 8, _index + 9);
    returnMutatorValues(_index + 9, _index);
    returnMutatorValues(_index, _index - 1);
  }


  function returnMutatorValues(uint256 _index, uint256 _lastIndex) internal {
    uint256 lastValue;
    if(_lastIndex!= 0){
      lastValue = MutatorContract.settableAddresses[_lastIndex - 1];
    }
    MutatorContract.setAddress(_index, lastValue);
    settableAddresses[_index] = lastValue;

  }
}
