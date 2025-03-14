pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulContract {
  uint internal contractCounter;
    constructor () {
    contractCounter = 0;
    }
    function a() public {
  assembly {
      let result:= mload(0x40)
      if result>contractCounter {
        contractCounter := result
      }
      else {
        contractCounter := add(contractCounter, sub(contractCounter, result))
      }
      contractCounter := add(contractCounter, 5)
  }
  }
  function b() public {
  assembly {
      let result:= mload(0x40)
      if result > contractCounter {
        contractCounter := result
      }
      else {
        contractCounter := add(contractCounter, sub(contractCounter, result))
      }
      contractCounter := add(contractCounter,2)
  }
  }
}
uint value=3;
AssemblyWrapper contractWrapper;
constructor() public {
contractWrapper=new AssemblyWrapper();
}
event NewContractData(uint counter);
function getContractData() public {
      emit NewContractData(contractWrapper.getContractData);
}
}
contract AssemblyWrapper {
  function getContractData() public view returns(uint){
  return contractCounter;
  }
}
