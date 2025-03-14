pragma solidity ^0.8.0;
contract SolidityContract2 {
constructor(string memory _ ) {}
function returnString(uint _number) public pure returns (string memory) {
return "Number: " + bytes32(uint256(_number));
}
function returnString2(uint _number) view public  returns (string memory) {
return "Number: " + bytes32(uint256(_number));
}
uint returnUint2() public pure returns (uint) {
return 7;
}
contract ArrayContract2 {
function getElements(uint[] memory source, uint size) public view returns (uint[]) {
uint[] memory destination;
for (uint index = 0; index < size; index ++ ) {
destination.push(source[index]);
}
return destination;
}
}
}
