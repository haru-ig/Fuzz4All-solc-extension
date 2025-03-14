pragma solidity ^0.8.0;
contract M {
  int counter;
  bytes32 public _fallbackCodeWithout;
  fallback() external {
    counter -= 1;
    unchecked {
      counter += 1;
    }
  }

  fallback(bytes32 _fallbackCode) external {
    counter -= 1;
    unchecked {
      counter += 1;
    }
  }

  function payout() public view returns (bytes32) {
    return _fallbackCodeWithout;
  }
}
