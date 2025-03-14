pragma solidity ^0.8.0;
contract myContract {
  Equivalent_contract11_new x;
  constructor() {
  x = new Equivalent_contract11_new();
  }
  function myFun() public pure returns(uint) {
    return x.constant1 + x.constant2;
  }
}
contract myContract_mod {
  Equivalent_contract11_old x;
  constructor() {
  x = new Equivalent_contract11_old();
  }
  function myFun() public pure returns(uint) {
    return x.constant1 + x.constant2;
  }
}
contract myContract_mod_not {
  Equivalent_contract11_old x;
  constructor() {
  x = new Equivalent_contract11_old();
  }
  function myFun() public pure returns(uint) {
    return x.constant1 + x.constant2;
  }
  function myFun2() public pure returns(uint) {
    return anotherFunction();
  }
  function anotherFunction() public pure returns(uint) {
    return x.constant1 + x.constant2;
  }
}
