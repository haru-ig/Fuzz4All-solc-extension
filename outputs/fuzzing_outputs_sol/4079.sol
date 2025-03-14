pragma solidity ^0.8.0;
contract Mutation9 {
  function myMutantFallback(uint256 _amount) public {
    _amount--;
  }
}
contract Mutation10 {
  function myMutantFallback(uint256 _amount) public pure {
    _amount--;
  }
}
contract InterfaceX {
  function myF() public payable returns (uint256) {
    return 19+100;
  }
}
contract Fallback {
  function myF() public payable {

    require(address(this).balance!= 0);
  }
}
