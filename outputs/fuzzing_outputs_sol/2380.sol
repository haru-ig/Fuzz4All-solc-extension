pragma solidity ^0.8.0;
contract Caller {
  uint i = 0;
  function caller() public {
    ++i;
    (bool success, ) = address(msg.sender).call{value: 7}("");
    i = i + 1;
    bool b;
    address addr;
    (b, addr) = (msg.sender.send(7), msg.sender);
    i = i + 1;
    (bool success, ) = addr.call{value: 13}("");
    i = i + 1;
    (bool success) = address(7).call{value: 13}("");
    i = i + 1;
    address a = msg.sender;
    a.call{value: 13}("");
    i = i + 1;
    call();
    i = i + 1;

    (bool success, ) = address(0).call{value: 13}("");
    i = i + 1;
    (bool success, ) = address(a).call{value: 13}("");
    i = i + 1;
    (bool success, ) = a.call{value: 13}("");
    i = i + 1;
  }
}
