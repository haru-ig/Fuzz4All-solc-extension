pragma solidity ^0.8.0;
contract Fallback {
  function myF() public payable {
    require(address(this).balance!= 0);
  }
}
contract Mutation9 {
  function myMutantFallback(uint256 _amount) public {
    _amount--;
  }
}
contract Mutation10 {
  function myMutantFallback(uint256 _amount) public pure {
    require(address(this).balance!= 0);
    _amount--;
  }
}
