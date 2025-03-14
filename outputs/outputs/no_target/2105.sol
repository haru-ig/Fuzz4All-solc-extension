pragma solidity ^0.8.0;
contract Modifications1{
  function() external payable{
    uint256 a;
    (a, ) = IERC20(address(0)).transferFrom(msg.sender, address(0), 400);
  }
}
