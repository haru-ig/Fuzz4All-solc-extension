pragma solidity ^0.8.0;
contract SampleContract {
mapping(address => mapping(address => uint256)) private x;
mapping(bytes32 => uint256) private memoryBytes;
mapping(address =>  uint256) private memoryAddress;
mapping(uint256 => uint256) private memoryInt;
mapping(uint8 => uint256) private memoryU8;
uint private memoryUint;
constructor()
public {
bytes32 name = keccak256("SolidityTestStorage");
x[msg.sender][x[msg.sender][name]][1] = 1;
}
function valueTransfer(address addr, uint256 val)
public {
memoryAddress[addr] = val;
}
function valueTransferAddress(uint256 val)
public returns (uint256){
memoryAddress[x[x[x[x[1]]][1]]][2] = val;
return val + 1;
}
function valueTransferBytes(uint256 val)
public returns (uint256){
memoryBytes[x[x[x[x[1]]][1]]][1] = val;
return val + 1;
}
function valueTransferString(string memory  mem)
public returns (uint256){
bytes32 val = keccak256(block.timestamp.toString() + mem);
memoryBytes[x[x[x[x[x[1]]][1]]][val]][3] = 1;
return val + 1;
}
function valueTransferUint(uint val)
public returns (uint256){
memoryUint = val;
return val + 1;
}
function valueTransferUint8(uint8 val)
public returns (uint256){
memoryU8[x[1]] = val;
return val + 1;
}
function valueTransferUint256(uint256 val)
public returns (uint256){
memoryUint = val;
return val + 1;
}
function valueTransferBytes32(bytes32 val)
public returns (uint256){
memoryBytes[x[x[x[1]]][1]]][4] = val;
return val + 1;
}
function valueTransferUint256String(string memory  mem)
public returns (uint256){
bytes32 val = keccak256(block.timestamp.toString() + mem);
uint256 data = (uint256(blockhash(block.number - 1))) + val;
memoryAddress[x[x[x[1]]][1]]][5] = val;
memoryBytes[x[x[x[
