pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidityPointers2 {

  function test(uint[][][] memory array1) public {
    array1[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0] = 3;
    array1[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0][0];
  }
}
contract SemanticallyEquivalentSolidityPointers3 {


  function test(uint[][][] memory memoryArray) public {
    address[70][70][70][70][70][70][70][70][70][70][70][70][70][70][70][70][70][1] memory addressArray;
  }
}
contract SemanticallyEquivalentSolidityPointers4 {


  constructor() {
    SemanticallyEquivalentSolidityPointers2 memory memoryArray  = SemanticallyEquivalentSolidityPointers2(arrayofArrays20);
    address[70][70][70] memory addressArray  = SemanticallyEquivalentSolidityPointers3(arrayofArrays21);

  }

}
