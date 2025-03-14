pragma solidity ^0.8.0;
contract RejectedExample {



  function() public payable { revert(); }
}
