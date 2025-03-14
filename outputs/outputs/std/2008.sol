pragma solidity ^0.8.0;
address PayableInterface(address _vender) public {
    receive() external payable {
      _vender.transferFrom(msg.sender, 0x00000000000000000000000000000000000000000, 0);
    }
}
