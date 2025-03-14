pragma solidity ^0.8.0;
contract D {
  function bar(int a) public pure {
    a = a + 1;
    require(a == 1);
  }
}
contract Caller {
  constructor(address a) public {
    a.delegatecall(abi.encodeWithSignature("bar(0)"));
  }
}

pragma solidity 0.8.0;
contract D {
  function bar(int) public pure {
    return 1;
  }
  function barFallback(bytes memory) public pure returns(bytes memory) {
    return abi.encodeWithSignature("bar(int)", 1);
  }
  function barRec(uint) public pure returns(uint) {
    return 0;
  }
}
contract Caller {
  constructor (address a) public {
    a.delegatecall(bytes(abi.encodeWithSelector(Erc20.safeTransfer.selector)));
  }
}

contract Erc20 {
  event Transfer(address indexed beneficiary, uint256 value);
  uint256 public totalSupply;
  constructor () public {
    totalSupply = 100000000000000000000000000;
  }
  function transfer(address to, uint256 value) public {
    require(to!= address(0));
    require(value > 0);
    _transfer(address(0), to, value);
  }
  function allowance(address owner, address spender) public view returns (uint256) {
    return 1;
  }
  function approve(address spender, uint256 value) public {

  }
  function totalSupply() public view returns (uint256) {
    return totalSupply;
  }
}

contract Caller {
  constructor (address a) public {
    a.delegatecall(bytes(abi.encodeWithSelector(D(0).bar.selector)));
  }
}

contract Caller2 {
  uint public x;
  constructor (address a) public {
    a.delegatecall(abi.encodeWithSelector(Address.functionCall.selector));
  }
}

pragma solidity ^0.8.0;
contract D {
  function bar() public pure {
    raise(2 ** 128);
  }
}
contract Caller {
  address a;
  constructor (address a_) public {
    a= a_;
  }
  function callA (address a2) public {
    a2.delegatecall(bytes{0x48:68,
