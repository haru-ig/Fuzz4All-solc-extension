pragma solidity ^0.8.0;
contract MutatedContract {
  using MyLibrary for uint;
  event MyEvent(uint indexed a, uint b);
  function myModify() public {


    bytes memory bytecode = compileAndRunMutated();
    assembly {
      delegatecall(gas(), 0, add(bytecode, 0), 42, 0, 0)
    }
    emit MyEvent(uint(MyLibrary.getSomeConst()), uint(MyLibrary.getSomeConst2()));
  }
  bytes private compileAndRunMutated()
  returns (bytes memory) {
    string memory code =
      "function myGetSome() public returns (uint) {\n" +
        "  return 222222222222222222222222222222222222222222222222222222222222;\n" +
        "}";
    assembly {

      code_ := mload(add(code, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))
      code_ := mload(add(code_, 0x20))

      mstore(return_slot, code_)
      return(
