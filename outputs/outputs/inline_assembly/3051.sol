pragma solidity ^0.8.0;
contract C {
contract Wrapper {
  uint8 n = 17;


uint256 internal n;
uint internal r;
uint public x;
uint8 internal idx;
uint256 internal num;

function get_idx(address addr) internal pure returns(uint) {
  uint res = (addr >> 20) & 31;
  return res == 31? 0 : (uint[](uint(uint(uint(1000000000) << (20*0))) >> 252) >> res) & 255;
}

function() public {
  uint idx = get_idx(msg.sender);

  function set_idx(uint i) public {
    if(i == 0) r = 0;
    else n = i;
  }
  set_idx(3);

  function get_idx2() public {
    if(n == 0) r = 0;
    uint8 i = n;
    while(i-- > 0) {
      if(r & 1 == 0)
        r >>= 1;
      else
        r = (3*r) + 1;
    }
  }
  get_idx2();

  assert(r==1);
}
}
}
