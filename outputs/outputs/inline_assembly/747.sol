pragma solidity ^0.8.0;
 contract Mutator17 {
 uint _counter;
 modifier test1(uint a) {
       if (a%2 == 1) {
_counter =  _counter + 1;
     } else {
 _counter =  _counter + 2;
     }
 }
}
contract Mutator18 {
 uint _counter;
 modifier test2(uint a) {
       if (((a%2 == 1) && (a % 4 == 0)))) {
_counter =  _counter + 3;
     } else {
 _counter =  _counter + 4;
     }
 }
}
contract Mutator19 {
 uint _counter;
 modifier test3(uint a) {
       if (((a%2 == 0) && (a % 4 == 0) || (a%2 == 1) && (a % 4 == 1)))) {
_counter =  _counter + 4;
     } else {
 _counter =  _counter + 5;
     }
 }
}
