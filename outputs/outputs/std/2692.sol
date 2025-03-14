pragma solidity ^0.8.0;


contract C1;
contract A { address public owner; function changeOwner(address account) external pure { owner = account; }};
contract B { address public owner; constructor () public { owner = msg.sender; }};
contract C1 is C1, A, B { address public owner; function a1(address sender, address receiver) public pure { receiver.call{gas:2000000}(abi.encodeWithSignature("changeOwner(address)", sender)); } };
contract C2 { address public owner; constructor () public { owner = msg.sender;} A b = C1(owner); function c2(address sender, address receiver) public pure { receiver.call{gas:2000000}(abi.encodeWithSignature("changeOwner(address)", sender)); }};
contract D { function d() public pure { address a = C1(owner); a.changeOwner{gas:2000000}(address(this)); } };
contract C1X { function callWithEther(address sender, address receiver, uint256 amount) public payable pure { receiver.call{value:amount}(abi.encodeWithSignature("changeOwner(address)", sender));} };
contract C2X { function callFromEther(address sender, address receiver, uint256 amount) public pure payable { receiver.call{value:amount}(abi.encodeWithSignature("changeOwner(address)", sender));} };
contract DX { function d() public pure { address a = C2(owner); a.changeOwner{gas:2000000}(address(this));} };
contract E { address public owner; function e() public pure { address a = C1(owner); a.changeOwner{gas:2000000}(address(a));}} D d = E(owner); C1X c = C1X(owner); C2X c1x = C2X(owner); D d1 = E(owner); d1.d(); c1x.callWithEther(owner, owner, 100000000); d1.d();
