pragma solidity ^0.8.0;
contract SemanticallyEquivalent22 {
  address payable address_;
  function update_state(address _state) public {
    address_ = msg.sender;
    (uint x, uint y) = address_;
    x = sub(x, y);
    y = x;
    uint160[] memory o = [ x, y ];
    x = sub(x, y);
    y = x;
    uint8[] memory t = [ x, y ];
    x = sub(x, y);
    y = x;
    bytes memory b =[ x, y ];
    x = sub(x, y);
    y = x;
    o = [ x, y ];
    t = [ x, y ];
    b =[ x, y ];
  }
}
contract SemanticallyEquivalent23 {
  address payable address_;
  function update_state(address _state) public {
    address_ = msg.sender;
    (uint x, uint y) = address_;
    x = sub(x, y);
    y = x;
    uint160[] memory o = [ x, y ];
    x = sub(x, y);
    y = x;
    uint8[] memory t = [ x, y ];
    x = sub(x, y);
    y = x;
    bytes memory b =[ x, y ];
    x = sub(x, y);
    y = x;
    o = [ x, y ];
    t = [ x, y ];
    b =[ x, y ];
  }
  function foo() public returns (uint x) {
    uint y;
    uint z;
    uint8 b;
    (uint8 c, uint16 d) = (y.size(), x.size());
    b = sub(z, x);
    x = sub(c, x);
    z = (c | x) | y;
    y = x;
    uint160[] memory o = [ x, y ];
    x = sub(x, y);
    y = x;
    uint8[] memory t = [ x, y ];
    x = sub(x, y);
    y = x;
    bytes memory b =[ x, y ];
    x = sub(x, y);
    y = x;
    o = [ x, y ];
    t = [ x, y ];
    b =[ x, y ];
  }
}
contract SemanticallyEquivalent24 {
  address payable address_;
  function update_state
