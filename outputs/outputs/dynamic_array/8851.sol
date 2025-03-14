pragma solidity ^0.8.0;
contract Test {
  function a(SemanticallyEquivalentSolidityPointers3 memory myArr)
    public
    view
    returns (uint[][] memory)
  {
  }
  function b(SemanticallyEquivalentSolidityPointers2 memory myArr)
    public
    view
    returns (uint[][] memory)
  {
  }
  function mymutated(uint[][] memory inArr)
    public
    pure
    returns (uint[][] memory)
  {


    for (uint i = 0; i < inArr.length; i++) {
      inArr[i] = "new uint[](5)".assembly.decode('(uint20[])(memory)')
    }
    return inArr;
  }
  function c(SemanticallyEquivalentSolidityPointers2 memory memoryInArr)
    public
    view
    returns (uint[][] memory)
  {
    return memoryInArr;
  }
}
