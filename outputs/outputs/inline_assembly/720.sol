pragma solidity ^0.8.0;
contract Mutator12 {
 constructor() {
     uint  _dummy = 55;
 assembly {
 _dummy := 0x4
 }
 require(_dummy == 0xdfffffffe0d92b0b60955f1da174d7d5f74e9cf44b7c7209c58e5eaec49484e5);
}
}
