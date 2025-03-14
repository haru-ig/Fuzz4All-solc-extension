pragma solidity ^0.8.0;
contract B_1 is B { bool executed; bytes32 a; constructor() public { a = bytes32(uint256(uint8(0x7))); executed = true; } function log() public { require(executed); emit a; } }
contract B_2 is B_1 { bool executed; constructor() public { super.log(); executed = true; } function log() public { super.log; require(executed); emit a; } }
contract B_3 { bool executed; bytes32 a; constructor() public { a = bytes32(uint256(uint8(0x3))); executed = true; } function log() public { require(executed); emit a; } }
contract B_4 { bool executed; constructor() public { executed = true; } function log() public { require(executed); emit bytes32(uint256(uint8(0x7))); } }
contract C is B, B_2 { bool executed; constructor() public { executed = true; } function log() public { require(executed); emit a; } }
contract D is B_3, B_4 { bool executed; constructor() public { executed = true; } function log() public { require(executed); emit a; } }
contract E is B_3 { bool executed; constructor() public { executed = true; } function log() public { emit bytes32(uint256(uint8(0x7))); } }
contract F { bool executed; address public callerAddress; bytes32 public a; constructor() public { a = bytes32(uint256(uint8(0x6))); executed = true; } function log() public { require(executed); emit a; } }
contract G is F { bool executed; bytes32 public callerAddress; constructor() public { calledAddress = bytes32(uint256(uint8(0x8))); executed = true; } }
contract H { bytes88 public a; constructor() public { a = bytes88(uint256(uint8(0x9))); } }
contract E_2 {
  function doIt() public throws () {
    address caller = msg.sender;
    address caller1 = 5;
    bytes32 a;

    assembly { a := mload(0x41) }
    a = bytes32(uint256(uint8(0x6)));
    a = bytes32(uint160(1));
    require(caller == caller1);
