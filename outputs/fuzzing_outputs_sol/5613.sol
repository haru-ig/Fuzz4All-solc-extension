pragma solidity ^0.8.0;
contract semanticallyequivalent_mutated
{
	mapping(uint => bool) bools;
	mapping(address => uint) uints;
	uint summation;
	string message;


    function f(uint n) public view returns (uint) {
        bools[87]*=10;
        return uints[101];
    }

    function g() public view returns (uint) {
	summation=int_mult(10,102);
        return uints[102];
    }

    uint int_mult(uint a,uint b) public pure returns (uint)
    {
	if(a>b)
	{
	    x=x-b;
	    return int_mult(x,b);}
	return a*b;
    }

}
