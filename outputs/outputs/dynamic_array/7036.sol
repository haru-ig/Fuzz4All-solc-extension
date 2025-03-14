pragma solidity ^0.8.0;
contract NoTest

{
constructor(bool b)
public
{
	if (b) {}

}

function getB()returns(bool)
{
	return false;
}

function getABC()returns(uint8, uint8, uint8)
{
	return(1,2,0);
}
}
