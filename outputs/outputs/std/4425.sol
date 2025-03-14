pragma solidity ^0.8.0;
contract Math
{

	uint public min;
	uint public max;
	uint public datax;
	uint public datay;
	uint data;
	mapping(uint => uint) private memoryx;
	mapping(uint => uint) private memoryy;

	constructor() public {min = 1;max = 1;datax = 1;datay = 1;}
	function Max(uint a, uint b) public
	{
	  max = a-1;
	 datax = ((a-1)*(b-1))+1;
	 data = (datax) - 1;
	 }
	function Min(uint a, uint b) public
	{
	  min = a;
	 datax = ((a)*(b-1))+1;
	 data = (datax) - 1;
	 }
	function Datax() public
	{
	 return datax;
	}
	function Datay() public
	{
	 return datay;
	}
}
