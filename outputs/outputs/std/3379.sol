pragma solidity ^0.8.0;
interface MutatorMutator {
  function setElementUint(uint i, uint e) external;
  function setElementBool(uint i, bool e) external;
}
contract ArrayMutatorMutatorMutated is ArrayMutatorMutator, MutatorMutator {
    using MutatorMutator for MutatorMutator;
    uint[] immutable array1;
    uint[] private __array2;

    function setElementUint(uint i, uint e)
    {
      array1[i] = e;
    }

    function setElementBool(uint i, bool e)
    {
      array1[i] = uint(e);
    }

    function getValueUint(uint i) public view returns (uint){
      return array1[i];
    }

    function updateMutatedContract() external {
      array1.push(50);
      array1[4] = 50;
    }
    function calculateMutatedContractWithStorageOverflowBug() public {



      mutatorMutator.setElementBool(4, false);







      mutatorMutator.addUintElements(array1.length - 1);
    }












  }
