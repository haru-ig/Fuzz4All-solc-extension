pragma solidity ^0.8.0;
library Equivalent
{
  function modifiedSendEther(uint x, Equivalent xcontract) public payable {
    (bool result, ) = xcontract.modifiedSendEther.selector.call{value: x}("");
    require(!!result);
  }
} */
