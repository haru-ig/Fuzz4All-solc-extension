pragma solidity ^0.8.0;
contract L72 {
  function sneaky() public {
    uint counter = 0;
    uint y = counter + gasleft();
    _transferEther(msg.sender, 3333);
  }
}
