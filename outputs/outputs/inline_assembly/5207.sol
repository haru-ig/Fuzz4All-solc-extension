pragma solidity ^0.8.0;

contract WithNoConstructor {


  modifier onlyUser() {
    address user = msg.sender;
    require(user!= address(0) && user!= address(this) && user!= tx.origin, "only users");
    _;
  }

  function executeOnly(address _address) public {
    check(_address);
  }

  function executeBoth(address _address) public onlyUser {
    check(_address);
  }

  function executeOnly1(address _address) public onlyUser {
    check1(_address);
  }


  function check(address _address) internal view {
      address addr = _address;
      if (addr == address(0)) {
          emit EmitedAddress(0);
      } else {
          emit EmitedAddress(_address);
      }
  }


  function check1(address _address) internal
