pragma solidity ^0.8.0;
contract Caller {
  function callWithEther() internal view returns (uint) {
    return callWithoutEther();
  }
  function callWithoutEther() internal view returns (uint) {
    (bool success, ) = payable(address(this)).delegatecall(bytes(address(this)));
    require(success, "Caller.callWithEther: failed");
    return msg.value;
  }
}
