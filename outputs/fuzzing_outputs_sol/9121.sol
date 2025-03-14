pragma solidity ^0.8.0;
contract Caller {
  event MyEvent(uint);
  function payable() external payable {

    (bool ok, ) = address(msg.sender).call{value: 42}("");
    if (ok) { emit MyEvent(1); } else { revert(""); }
  }
}
