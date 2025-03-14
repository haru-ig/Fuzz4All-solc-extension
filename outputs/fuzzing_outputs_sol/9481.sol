pragma solidity ^0.8.0;
contract ContractWithFallback13 {
  function modify(address foo, uint x) public payable {
    if (x > 0) {
      foo.modify(foo, x - 1);
    }
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback14 {
  function modify1(address foo, uint x) public {
  }
  function modify2(address foo, uint x) public {
  }
}

pragma solidity ^0.8.0;
contract ContractWithFallback15 {
  address addr;

  constructor() payable {
    addr = (new ContractWithFallback12()).transfer(msg.sender, msg.value);
  }
}
contract Caller {
  modifier onlyCaller {
    if (msg.sender!= address(this))
      _;
  }

  function doSomething(uint x) public payable {
    if (x * 2 > 5)
      throw;
    payable(addr).call(abi.encodeWithSignature("modify(address,uint256)", msg.sender, x * 2));
  }
}
