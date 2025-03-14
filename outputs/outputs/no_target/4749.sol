pragma solidity ^0.8.0;
struct S
{
address payable x;
}
function f(S memory x) {
 x.x = address (c);
}
function g(address z) {
 f(S({
 x : z
}));
}
function main() public {
g(address (new C()));
}




pragma solidity ^0.8.0;
struct S
{
bool b;
}
bool g(S memory s) {
 s.b = s.b || s.b && s.b;
 s.b = s.b && s.b || s.b;
}
contract C
{
function f(address f) public view {
return g(address (new C()));
}
}


pragma solidity ^0.8.0;
contract C
{
uint256[50] public numbers;
constructor (uint160 z) public {
 numbers = new uint256[](50);
 numbers[0] = address(new C());
}
method void doAssertFail(bool a, bool b)
{
 require(a);
 require(b);
 }

}


pragma solidity ^0.8.0;
contract C
{
function f(uint160 z) public view {
 if(z < 0) {
  assert(false);
  } else {
  }
 return;
}
}


pragma solidity ^0.8.0;
contract C
{
constructor(address z) public {
 c = z;
}
address public c;
}

pragma solidity ^0.8.0;
contract C
{
struct S
{
uint160 i;
}
S public s;
constructor () public {
 s = S({
 i : 1000
});
}
}

pragma solidity ^0.8.0;
contract C
{
constructor (address z) public {
 c = z;
}
address public c;
mapping(uint160 -> uint160[2]) public a;
constructor () public {
 uint160 i;
 a[(0, 1)] = new uint160[](2);
 a[(0, 1)][0] =
