pragma solidity ^0.8.0;
contract A
{
	I a;
}
contract B
{
	A a;
}
contract C
{
	require(address(a) == address(new B));
}
