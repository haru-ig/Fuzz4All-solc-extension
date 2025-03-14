pragma solidity ^0.8.0;
contract SemanticEquivalentK3
{
  address public owner;
  address public beneficiary;
  uint256 public gasPrice = 90e18;

  constructor(address beneficiary_)
  {
    beneficiary = beneficiary_;
  }

  fallback() external payable { }
}

pragma solidity ^0.8.0;
contract SemanticEquivalentK4
{
  address public owner;
  address public beneficiary;
  uint256 public gasPrice = 90e18;

  constructor(address beneficiary_) : public { beneficiary = beneficiary_; }

  fallback() external { }
}

pragma solidity ^0.8.0;
contract SemanticEquivalentK5
{
  ERC20 TokenA;
  ERC20 TokenB;
  constructor()
  {
    TokenA = ERC20(0x123);
    TokenB = ERC20(0xaBc);
  }

  fallback() external payable {
    transfer(TokenA, TokenB, msg.value);
  }
}

pragma solidity ^0.8.0;
contract SemanticEquivalentK6
{
  interface InterfaceA
  {
  }


}
