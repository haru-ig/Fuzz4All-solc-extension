pragma solidity ^0.8.0;
contract MutantFallback2 {
  fallback function myFallback() public pure returns (uint256) {
    return 1;
  }
}

pragma solidity ^0.8.0;
contract MutantFallback3 {
  bytes32 public data;
  function myFallback() public pure returns (uint256) {
    return 1;
  }
  function callWithFallback(MutantFallback2 c) public payable {
    data = c.myFallback();
  }
}

contract Caller
{
  constructor() public {}

  function callWithFallback(MutantFallback2 _fallback) public payable returns (bool) {
     bytes32 _caller = msg.sender;
     uint256 _ret = _fallback.myFallback();
     _caller.contract.call{value:address(this).balance}("");
     if (data == _ret) {
        return true;
     } else {
        return false;
     }
  }
}
