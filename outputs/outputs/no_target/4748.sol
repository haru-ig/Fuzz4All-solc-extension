pragma solidity ^0.8.0;
contract C
{
address public address1;
address public address2;
address public c;
address public address3;
address public address4;
address public address5;
address public address6;
mapping (address=>bool) public flag;
address public address7;
address public address8;
constructor (address z) {
 c = z;
flag[c] = true;
}
address internal c;
function () {
 c = address1;
}
}


pragma solidity ^0.8.0;
contract C
{
address public c;
constructor (address z) {
 c = z;
}
address internal test() external {
 c = address(new C(c));
}
address internal c;
}


pragma solidity ^0.8.0;
contract C
{
address public c;
constructor (address z) {
 c = z;
}
constructor() {
 address1 = this;
 address2 = this;
 address3 = this;
 address5 = this;
 address6 = this;
}
address internal c;
function hidden() internal {
 c = address1;
}
function hidden() external {
 c = address2;
}
function external() external {
 c = address3;
}
function external() internal {
 c = address5;
}
function internal() internal {
 c = address6;
}
}
contract C
{
function hidden() external {
 c.d = address1;
}
function hidden() internal {
 c.d = address2;
}
function public() public {
 c.d = address3;
}
function public() external {
 c.d = address5;
}
function internal() internal {
 c.d = address6;
}
function internal() external {
 c.d = address7;
}
mapping (address=>bool) public flag;
contract D
{
address public d;
constructor(address z) {
 d = z;
}
}
function hidden() internal returns (uint) {
 c(hidden, address(this));
}
}

pragma solidity ^0.8.0;
contract C
{
address public c;
constructor(address z) public {
 c = z;
 emit C(address(0x1), z, 0x1);
}
event E( address indexed d, address indexed c, uint indexed u);
function emit() emit E(0x2, address(0x2), uint(safe160(block.number)));
function emit2() emit E(0x2
