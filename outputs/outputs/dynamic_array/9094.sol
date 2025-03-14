pragma solidity ^0.8.0;
contract Test {
  using Address for address;
  using Address for address payable;
  mapping (address => uint256) public balance;
  address public owner;

  function Test(address payable _owner) public {
    owner = _owner;
  }

  function _modify(address _address, address _payable) internal {
    delete balance[_address];
    balance[_address] = 1;
    _owner.transfer(_payable);
  }
  function modify(address payable _addr, uint256 _value) external {
    IAddressable(_addr).revert(_value);
  }
  function getBalance() public view returns (uint256) {
    return balance[msg.sender];
  }
  function payOwner() public {
    modify(owner, 1);
  }
}
