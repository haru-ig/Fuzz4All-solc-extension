pragma solidity ^0.8.0;
contract C {
  uint constant counter = 0;
  address payable non_payable;
  constructor(address payable payee) public {
    non_payable = payee;
  }
  function f() public {
    non_payable.transfer(counter);
  }
}

pragma solidity ^0.8.0;
contract C {
  uint constant counter = 0;
  address payable non_payable;
  constructor(address payable payee) public {
    non_payable = payee;
  }
  modifier m() {
    non_payable.transfer(counter);
  }
  function g() public {


    m();
  }
}
