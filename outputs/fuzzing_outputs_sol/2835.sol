pragma solidity ^0.8.0;
contract NonUpgradable {
    receive() external payable { require(msg.value == 65050); }
}
