pragma solidity ^0.8.0;
contract Address
{
uint addr;
constructor () public
{
addr = 0;
}
function AddressData( uint a) public
{
addr = a;
}
function f(uint my) public
{
addr = my;
}
function g() public
{
addr = addr + 1;
}
}
contract A
{
Address addr;
constructor () public
{
addr = new Address.AddressData( 100 );
}
function f() public
{
addr.f( 200 );
}
function g() public
{
addr.f( 300 );
}
function h() public
{
addr.AddressData( 0 );
}
function i() public
{
  emit fA( 500 );
}
}
