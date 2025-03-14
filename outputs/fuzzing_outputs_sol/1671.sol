pragma solidity ^0.8.0;
contract FallbackImpl {
  bool private frozen;

  function __FROZEN_() internal view {
    frozen = true;
  }

  function _setFrozen(bool value) internal view {
    frozen = value;
  }

  function __FAKE_RECEIVE_() internal view {
    if (!frozen) {}
  }

  function __FAKE_PAY___() internal payable {}

  function checkFrozen() internal view returns (bool) {
    uint256 timeSinceLastCall;
    assembly {
      timeSinceLastCall := sload(0x40)
    }
    (uint88 deadline, uint088 execution) = executionTime();
    return timeSinceLastCall >= uint256(-deadline - execution + 1);
  }

  function executionTime() internal view returns (uint88, uint088) {
    uint256 r;
    assembly {
      r := timestamp()
    }
    uint088 h = uint088(r);
    uint256 m = (r - h) / 1 days;
    return (uint88(m), h);
  }

  function frozen() public view returns (bool) {
    return frozen;
  }

  function __FAKE_RECEIVE__() internal view {
    if (checkFrozen()) {}
  }
}





pragma solidity ^0.8.0;

interface IERC20 {
  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);

  function balanceOf(address who) external view returns (uint256);

  function transfer(address to, uint256 value) external returns (bool);

  function transferFrom(address from, address to, uint256 value) external returns (bool);

  function approve(address spender, uint256 value) external returns (bool);

  function allowance(address owner, address spender) external view returns (uint256);
}

contract FrozenERC20 is IERC20, FallbackImpl {
  IERC20 private immutable _inner;

  function FrozenERC20(address inner_address) public {
    _inner = IERC20(inner_address);
    __FROZEN_();
