pragma solidity ^0.8.0;



contract Example22 {






  mapping (address => uint256) public map;

  function set(address account, uint256 value) private {
    map[account] = value;
  }

  function get() public view returns (uint256) {


    return map[msg.sender];
  }
}
