pragma solidity ^0.8.0;
contract Caller {
  function callViaLowLevelCall() public pure returns (uint256) {

    (bool success, bytes memory data) = address(this).call{
      value: 1 ether
    }("");
    uint256 returnCode = uint256(data.length);



    require(success && (data[0] == 0x90));
    return returnCode;
  }

  function callWithFallback() public pure returns (uint256) {

    (bool success, bytes memory data) = address(this).call{value: 1 ether}(new bytes(0));
    uint256 returnCode = uint256(data.length);


    require(success && (data[0] == 0))
  }
}
