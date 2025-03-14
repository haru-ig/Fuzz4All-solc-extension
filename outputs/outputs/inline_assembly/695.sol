pragma solidity ^0.8.0;
contract Mutator9 {
 mapping (address => uint) public balance;
 mapping (address => mapping (bytes32 => uint)) public lasts;
 mapping (uint => uint) public count;
 uint public index;
 function increaseIndex() public doUpTo(0) {
     index += 1;
     count[index] += 1;
     lasts[address(this)][123] += 1;
 }
}
