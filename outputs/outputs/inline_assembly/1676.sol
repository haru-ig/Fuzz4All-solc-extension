pragma solidity ^0.8.0;
contract MutatorStack {
uint256 constant ONE = 1;
uint256 a = ONE;
uint256 old_a;

uint256 constant FOUR = 1;
uint256 b = TWO;
uint256 constant THREE = 1;
uint256 constant MINUS = 999999999;
uint256 constant ADD = 100000000;
uint256 constant ZERO = 0;
uint256 constant TWENTY = 20;
uint256 constant FIFTY = 50;
uint256 constant SEVEN = 7;
uint256 constant OCT = 8;
uint256 constant NINE = 9;

uint256 constant TEN = 10;
uint


function mutate(uint a, uint b) public onlyLastChange {
b = a + ONE + TWO;
a = ONE + ONE + FOUR + THREE + TWENTY + ONE;
SET(minus);
b = TWENTY + ONE + ONE;
C();
old_a = a;
}
function C(a,b) internal
{
a -= THREE + THREE + ONE;
b = THREE + FOUR + ONE + A;
b = TWENTY + FOUR + ADD + FOUR;
}
function modifyA() public onlyLastChange {
a = One - ONE;
}
function SET(a) internal
{
old_a
