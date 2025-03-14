pragma solidity ^0.8.0;
contract MyContract {
  bytes4 internal constant FUNC_SIG = 0x1000000004;
  function increase(uint _amount) external {
  }

  function decrease(uint _amount) external {
  }

  function increase(uint _from, uint _to) external returns (uint) {
    return increase(_from);
  }
}
contract MyContract {
  address public owner;
  address payable public receiver;
  bytes4 internal constant FUNC_SIG = 0x1000000004;
  function increase(uint _amount) public {
  }

  function decrease(uint _amount) public {
  }


  function increase(uint _from, uint _to) public view returns (uint) {
    return increase(_from);
  }

  constructor() public payable {
    owner = msg.sender;
  }
}
