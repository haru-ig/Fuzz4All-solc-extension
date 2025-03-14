pragma solidity ^0.8.0;

contract i {
  mapping(uint256 => uint256) a;
  function get() public view returns(uint256) {
    return a[msg.sender];
  }
  function set(uint256 x) public {
    a[msg.sender] = x;
  }
}

pragma solidity ^0.8.0;
contract j is i {
  mapping(address => uint256) b;
  function set(uint256 x) public {
    b[msg.sender] = x;
  }
  function get() public view returns(uint256) {
    return b[msg.sender];
  }
}
