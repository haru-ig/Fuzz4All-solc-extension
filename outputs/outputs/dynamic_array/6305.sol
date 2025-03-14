pragma solidity ^0.8.0;

contract c {
  function get() public pure returns (string memory) {
    c[] memory dyn_arr = new c[](2);
    dyn_arr.push(c(1));
    dyn_arr.push(c(2));
    return dyn_arr.get(1);
  }
}
