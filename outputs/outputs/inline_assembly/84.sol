pragma solidity ^0.8.0;
contract A {
  uint8 private _number;
  constructor() {
    _number = 0x2;
  }
  function _decrementNumberA() public {
    _number -= 1;
  }
}
contract B {
  function calculateAmount() public pure returns(uint256) {
    return _number;
  }
}
contract C {
  uint8 public _number;
  constructor() {
    _number = 0x2;
  }
  function _incrementNumberA() public {
    _number += 1;
  }
}
contract D {
  uint8 public _number;
  constructor() {
    _number = 0xA;
  }
  function _decrementNumberB() public {
    _number -= 1;
  }
}
contract E {
  uint8 private _number;
  constructor() {
    _number = 0x2;
  }
  function _decrementNumberA() public {
    _number -= 1;
  }
}
contract Burner {
  uint256 private _number;
  constructor() {
    _number = 0x2;
  }

  function burnSomeTokens(ERC20 _token, uint256 _amountAmount) public {
    _token.burn(_amountAmount);
  }
  function increaseNumber(uint8 _number) public {
    _number += 1;
  }
}
contract Minter {
  uint256 public minersReward;
  constructor() {
    minersReward = 0x2;
  }

  function mineMiner(address miner) public {
    miner.transfer(miner.balance);
  }
}
contract Token {
  function transfer(address recipient, uint256 amount) public virtual;
  function balanceOf(address who) public view returns (uint256);
  function burn(uint256 amount) public virtual;
}
contract Test1 {
A a;
C c;
D d;
E e;
Burner b;
D e;
constructor() public {
  a = new A();
  c = new C();
  d = new D();
  e = new E();
  b =
