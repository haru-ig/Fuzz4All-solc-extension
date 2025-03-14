pragma solidity ^0.8.0;
contract Equivalent_contract {
  uint constant [2] constant_array = [5,10];
  function add() public view returns (uint);
  function add_const() public view returns (uint) {
    return constant1 + constant2;
  }
  function mul_1of2and3() public view returns (uint) {
    return add_const() / constant_array[1];
  }
  function mul_2of2and3() public view returns (uint) {
    return add_const() / constant_array[0];
  }
  function addmul() public returns (uint) {
    return add() * 3;
  }
}
contract Equivalent_contract2 {
  uint constant constant1 = 30;
  uint constant constant2 = 33;
  uint constant constant3 = constant2 + constant1 * 57;
  uint constant constant4 = constant2 + constant1 * 3;
  uint constant constant1 = 30;
  uint constant constant2 = 33;
}
contract Equivalent_contract3 {
  uint constant constant1 = 30;
  uint constant constant2 = 33;
  uint constant constant3 = constant2 + constant1 * 9;
}
contract Equivalent_contract4 {
  uint constant constant1 = 30;
  uint constant constant2 = 33;
  uint constant constant3 = constant2 - ((constant2 - constant1) * 257);
  uint constant constant4 =
