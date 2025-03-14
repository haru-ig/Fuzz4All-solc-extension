pragma solidity ^0.8.0;
contract Caller {
  uint[] array = [1, 2, 3];
  function call() external {
    C c = C(address(this));
    address payable payee = payable(address(c));
    payee.sendValue(10 ** 10);
  }
}
