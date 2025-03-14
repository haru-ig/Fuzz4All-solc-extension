pragma solidity ^0.8.0;
bytes32 public myBytes32Value;
uint8 public myUint8Value;
address[] public myAddressArrayValue;
mapping(uint256 => uint256) public myUint256MapValue;
mapping(address => bool) public myBoolMapValue;
constructor() public {
    myUint8Value = 98;
    myBytes32Value = 0x32983498;
    myUint256MapValue[1] = 33;
    myBoolMapValue[1] = 0;
    myAddressArrayValue.push(1);
    myAddressArrayValue.push(2);
 }
function foo() public pure returns(uint8, uint256, bytes32, bool[], address[] memory){
    return (myUint8Value, myUint256MapValue[1], myBytes32Value, myBoolMapValue, myAddressArrayValue);
}
