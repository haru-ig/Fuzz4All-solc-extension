pragma solidity ^0.8.0;
contract StaticFallback {
  function modify(uint num) public returns (uint z) {
    z = num + 1;
    return 0x7FFFFFFF;
  }

  function staticModify(uint num) public {
    num = num + 1;
  }
}

interface I110 {
  function add(uint x) external pure returns (uint y);

  function subtract(uint x) external pure returns (uint y);
}

pragma solidity ^0.8.0;
contract CallableFallback {
  function fallback() external pure returns (uint y) {
    I110 i = msg.sender.balance <= 1?
      I110(payable(0x67deaf28b0012814102a12905689c94c0bf0c778)) :
      I110(payable(0x2111));
    y = i.add(5);
    return 0x7FFFFFFF;
  }
}
