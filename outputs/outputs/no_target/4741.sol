pragma solidity ^0.8.0;
library A {
bytes16 public f = "A";
uint public l1 = 0;
uint public l2 = 0;
uint public l3;
uint public l4 = 0;
uint public a = 0;
uint public b = 0x0;
uint public j = 0;
uint256 public k;
address public m;
uint32 public n = 0;
uint public i;
function get() public view
{
if (b == 2^127) {
k = 0x1000000;
}
}
}

pragma solidity ^0.8.0 ;
address public e;
constructor () {
 e = payable(msg.sender);
}
function func() public {
 e.send(2**255);
}
contract C {
address public f;
constructor (address z) {
 f = z;
}
address public e;
uint public g = 0;
address public c;
uint public d = 1234;
uint public h = 10;
uint public l = 2;
uint public b = 0b1010;
}
