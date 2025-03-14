pragma solidity ^0.8.0;
contract semanticallyequivalent15
{
	uint public x;
	uint public y;
	uint public z;

    fallback() external payable{
        x = 20;
        y = 10;
        z = 100;
    }
}
