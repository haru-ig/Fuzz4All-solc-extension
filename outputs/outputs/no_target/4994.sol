pragma solidity ^0.8.0;
contract AB0 { function f(uint256 a) public view {assert(a > 0);} }
contract AB1 { function f(uint256 a) public view {address x = msg.sender;} address[] calldata p; f(byte(x)); }
contract AB2 { function f(uint256 a) public view {address x = caller;} address[] calldata p; f(byte(x)); }
contract AB3 { function f(uint256 a) public view {address x = msg.sender;} address[] calldata p; f(byte(x)); }
contract AB4 { function f(uint256 a) public view {address x = caller;} address[] calldata p; f(byte(x)); }
contract AB5 { function f(uint256 a) public view {address x = payable(msg.sender);} address[] calldata p; f(byte(x)); }
contract ABC { function f(uint256 a) public view {address x = payable(msg.sender);} address[] calldata p; f(byte(x)); }
contract ABC5 { function f(uint256 a) public view {address x = payable(msg.sender);} address[] calldata p; address[] calldata p2; f(byte(x)); }
contract ABC6 { function f(uint256 a) public view {address x = payable(msg.sender);} address[] calldata p; address[] calldata p2; f2(msg.sender,byte(x)); }
contract AB01 { function f(uint256 a) public view {address x = payable(msg.sender);} address[] calldata p; address[] calldata p2; f2(msg.sender,byte(x)); }
