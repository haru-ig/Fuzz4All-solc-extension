pragma solidity ^0.8.0;
contract MutatesSquashGenerationsUsingYulWithSemantics {
  uint256 public g;
  address public y;
  uint256 y_address_address;
  uint256 y_address_0;
  bytes32 public yb;
  bytes4 public yb_0;
  bytes memory yb_1;
  function foo() public payable {
    uint256 yx = 11;
    uint256 r = 5;
    byte[] memory data = new bytes(1);
    data[0] = 0;
    (data, y_address_address, y_address_0) = yx;
    g = g + y_address_address & y_address_0 & yb + uint256(0x11111111) & r;
  }
}

pragma solidity ^0.8.0;
contract RevertsUsingYulWithSemantics {
  function foo() public reverts {
    uint256 r = 5;
    c = c;
    b = d;
    a = a;
  }
}

pragma solidity ^0.8.0;
contract ChangeSquashGenerationsUsingYulWithSemantics {
  uint256 public g;
  uint256 h;
  address public y;
  uint256 x = 65535;
  uint256 y_address_address;
  uint256 y_address_0;
  bytes32 public yb;
  bytes4 public yb_0;
  bytes memory yb_1;
