pragma solidity ^0.8.0;
contract SolidityUpgradeable {
  address payable public beneficiary;
  function upgrade(address _beneficiary) external {
    if(_beneficiary!= address(0)){
      beneficiary = _beneficiary;
    }
  }
}

contract Caller {
  uint public balance;
  function() external payable {
    balance = 100000 * 2;
  }
}

pragma solidity ^0.8.0;
contract Fallback {
  function() public payable{}
}

pragma solidity ^0.8.0;
contract MainnetDelegate {
  address payable public beneficiary = payable(0x1D40aFd894AE047C0d4C9285A1D54B778cC30C0b);
  function () public payable { }
}

pragma solidity ^0.8.0;
contract MainnetDelegateOnly {
  address payable public beneficiary = payable(0x20767C510aB35A0f2F538AD3CE7F4fF3E3A336e1);
  function () public payable { }
}
