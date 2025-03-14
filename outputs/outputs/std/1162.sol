pragma solidity ^0.8.0;
contract B1_Array is B2_Array {

function add(uint x, uint y) public pure returns (uint z) {
return x + y;
}

function subtract(uint x, uint y) public pure returns (uint z) {
return x - y;
}
function multiply(uint x, uint y) public pure returns (uint z) {
return x * y;
}

function getMin() public pure returns (uint) {
return 1;
}

function getMax() public pure returns (uint) {
return 3;
}

function getRandom() public view returns (uint) {
return uint(uint(keccak256(abi.encodePacked(block.timestamp, blockhash(block.number - 1)))) % 1);
}


bytes memory _theBytes = "";
uint _anArrayItem;
address[] storage _anArray = new address[](3);

constructor () external {
storeBytes("");
_anArray[0] = 0x138301017a8173D423b0bAb192e746D6d9058999;
_anArray[1] = 0x138301017a8173d423b0bAb192e746d6d9058999;
_anArray[2] = 0x138301017a8173d423b0bAb192e746d6d9058999;
_anArrayItem = add(getMax(uint8(false)), getRandom());
}

function add(uint x, uint y) public pure returns (uint z) {
return x + y;
}

function subtract(uint x, uint y) public pure returns (uint z) {
return x - y;
}

function multiply(uint x, uint y) public pure returns (uint z) {
return x * y;
}

function getMax(uint x) public pure returns (uint y) {
return x > y? x : y;
}

function getMin(uint x) public pure returns (uint y) {
return x < y? x : y;
}

function getRandom() public view returns (uint) {
return uint(uint(keccak256(abi.encodePacked(block.timestamp, blockhash(block.number - 1)))) % 1);
}

function storeBytes(bytes memory str) private {
for (uint i = 0; i < str.length; ++i) {
_theBytes.add(str[i]);
}
}
}
