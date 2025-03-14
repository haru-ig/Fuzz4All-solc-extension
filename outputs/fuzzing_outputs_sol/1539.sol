pragma solidity ^0.8.0;
contract CallerExample {
  function fallback(address user) public pure { user.transfer(address(this).balance - 1 ether); }


}
