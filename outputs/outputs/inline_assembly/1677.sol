pragma solidity ^0.8.0;
contract MutatorS {
  address addr;
  constructor() {
    addr = msg.sender;
  }
  function setB(uint256 x) public {
    addr.balance = x;
  }
  function setA(uint256 x) public only(addr) {
    a = x;
  }
}


contract Mutator {
  constructor() {}
  function mutate(uint256 x) public virtual {
    this.c = x;
    this.b = ONE;
    if (this.a == ONE) {
      this.b = ONE;
      this.c = ONE;
      this.a = ONE;
    }
    this.c = ONE;
    this.c = TWO;
    if (this.a == ONE) {
      this.b = ONE;
      this.c = TWO;
      this.a = TWO;
    }
    this.b = THREE;
    this.b = THREE;
  }
  function modifyB() public virtual {
    this.b = THREE;
    this.b = THREE;
  }
  function setA(uint256 x) public virtual {
    this.a = x;
  }
  function SET(uint256 x) internal virtual {
    this.a = x;
    this.a = THREE;
  }
  function PUSH(uint256 x) internal virtual {
    this.a = x;
    this.b = x;
    this.a = x;
  }
}

pragma solidity ^0.8.0;
contract
