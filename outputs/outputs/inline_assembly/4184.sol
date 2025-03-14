pragma solidity ^0.8.0;
contract Mutators6 {

uint a = 1;
uint [100] private storage a;
function set (uint a) public returns (uint) {
    a = 1;
    if(a>10) {
        a = 10;
    }
    return a;
  }
}
