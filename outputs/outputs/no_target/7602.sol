pragma solidity ^0.8.0;
contract ContractWithStructContainingFunction {
  function test()  public pure {
      ComplexStruct2 storage x = ComplexStruct2(0,0);
      uint256 a = uint256(x);
      if (a < 4) {
        x.a = a;
      }
      uint256 b = uint256(x);
  }

}
