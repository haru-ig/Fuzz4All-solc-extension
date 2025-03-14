pragma solidity ^0.8.0;
interface ArrayMutatorMutator {
  function updateIntElements(uint n) external;
  function updateBigIntElements(uint n) external;
}

pragma solidity ^0.8.0;
contract ArrayMutatorMutator
{
  uint[] public myArray;
  uint public counter;
  uint public count = 0;

  mapping (uint => ArrayMutatorMutator) public subInterface;

  event Update(uint count);

  constructor (){
    subInterface[0] = new ArrayMutatorMutator();
  }

  function updateIntElements(uint n) public {
    uint _n = n;
    for (_n; _n < count; ++_n) {
      ArrayMutatorMutator subInterface = subInterface[_n];
      subInterface.updateIntElements(n);
    }
    count = _n;
    Update(n);
  }

  function updateBigIntElements(uint n) public {
    uint _n = n;
    for (_n; _n < count; ++_n) {
      ArrayMutatorMutator subInterface = subInterface[_n];
      subInterface.updateBigIntElements(n);
    }
    count = _n;
    Update(n);
  }
}

pragma solidity ^0.8.0;
contract ArrayMutatorMutator
{
  uint[] public myArray;
  uint public counter;
  uint public count = 0;

  mapping (uint => ArrayMutatorMutator) public subInterface;

  constructor (){

    subInterface[0] = ArrayMutatorMutator(0);
  }

  function updateIntElements(uint n) public {

    ArrayMutatorMutator.updateIntElements(subInterface[0], n);
  }

  function updateBigIntElements(uint n) public {

    ArrayMutatorMutator.updateBigIntElements(subInterface[0], n);

  }
}
