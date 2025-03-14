pragma solidity ^0.8.0;
contract C {
  function f(uint256 a) public returns (uint16) {
    return a * 2;
  }
}

pragma solidity >= 0.8.3;
contract A {
  function f(uint b) public payable returns (uint256 x) {
    x = 2;
    require(false);
  }
}
contract B is A {
  function f(uint8 a) public override returns (uint256) {
    return 1;
  }
}

contract C {
  function f(uint8 a) public override returns (uint256) {
    return 1;
  }
}
contract D {
  function f(uint256) public pure {}
}
contract M {
  function f(uint s) public {
    require (s > 0);
  }
}
contract E {
  function f(uint) public pure {}
}
```

| Language | Compiler Version | Warnings / Issues |
|---|---|---|
| [Solidity](https:
| [Vyper](https:
| [Pyright](https:
| [Ganache](https:
