pragma solidity ^0.8.0;
contract Mutator22 {
uint _counter;
function testMethod(uint a) public {
uint  b = a + 2;
uint  c = a + 2;
uint  d = a + 2;
uint  e = a + 2;
if (c > d) {
 d = c;
}
if (d % 4 == 0) {
 _counter =  _counter + d - a;
} else {
 _counter =  _counter + d - this.testMethod(1);
}
b = a + 2;
c = a + 2;
d = a + 2;
e = a + 2;
b = a + 2;
if (e > f) {
 _counter =  _counter + (e - f);
}
if (b > c) {
 c = b;
}
}
}

pragma solidity ^0.8.0;
contract Mutator160 {
address internal owner;
uint private count;
constructor() public {owner = msg.sender;}
   event NewCounter(uint count_);
   function() public payable{}
   function count() public readonly returns(uint) {return count;}
   function withdraw() public {owner.transfer(address(this).balance);}
}
pragma solidity ^0.8.0;
contract Mutator187 {
uint count;
uint public aCount;
uint public aCount2;
uint internal a;
uint internal aCount4;
uint internal a;
uint internal aCount5;
uint public aCount6;
uint public aCount7;
uint public aCount8;
uint public bValue;
uint public constant cVal = 1;
uint public constant aValue4 = 1;
uint public constant aValue5 = 2;
uint public constant x = 1;
uint aCount3;
uint a;


function test_setPublicVariable() public {
a = x;
a = x + cVal;
a = x - 1;
a = x * 2;
a = a + aValue4;
a = a - aValue5;
a = a + cVal;
a = a * 2.5;
a = x - cVal;
x = x / 2;
x = x % 3;
x = x + aValue4;
x = x - aValue5;
x = x * 3
