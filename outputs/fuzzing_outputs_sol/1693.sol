pragma solidity ^0.8.0;
contract MutatedCall {
  function receiveData() public payable {
  }
}
contract Fallback {
  function() payable external {
  }
  function receiveData() public pure returns (uint256 data){
    return 0;
  }
}
contract Caller {
  function () public payable returns (uint256 result){


    calldata = bytes(abi.encode(MutatedCall.mutateMutatedFallbackWithFallback1()));
    (result, ) = address(0).call{value: 5 ether}(calldata);
  }
}
