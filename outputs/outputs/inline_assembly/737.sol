pragma solidity ^0.8.0;
 contract Mutator13 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b%2 == 0 && a % 4 == 0) {
 _counter =  _counter + 1;
     } else {
 _counter =  _counter - 1;
     }
 }
}

package main
pragma solidity ^0.8.0;
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts-0.8.0/contracts/utils/Address.sol";
contract Counter{
 uint currentValue;
 uint newvalue;
 mapping (address => uint) addressesToValue;
 function Mutator1(address addr) public {
 if (addr==msg.sender || get_value(addr)> 0) {
 newvalue = (uint(keccak256(abi.encodePacked(33,(uint(keccak256(abi.encodePacked(get_value(uint(keccak256(abi.encodePacked(32,(uint(keccak256(abi.encodePacked(32,(uint(keccak256(abi.encodePacked(uint(keccak256(abi.encodePacked(16,(uint(keccak256(abi.encodePacked(uint(keccak256(abi.encodePacked(8,(uint(keccak256(abi.encodePacked(get_value(32),32)))))),0))))),1))))))))))))%0xfffffffffffffff%0xffffffffffffffffffffffffffffffff%0xffffffffffffffffffffffffffffffff0;
   addressesToValue[addr] = newvalue ;
    bytes memory value = abi.encode(0,newvalue,uint256(block.timestamp));
        Address.sendValue(msg.sender,value);
address(uint(keccak256(abi.encodePacked(33,(uint(keccak256(abi.encodePacked(get_value(uint(keccak256(abi.encodePacked(32,(uint(keccak256(abi.encodePacked(uint(keccak256(abi.encodePacked(16,(uint(keccak256(abi.encodePacked(uint(kecc
