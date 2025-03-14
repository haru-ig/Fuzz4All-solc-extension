pragma solidity ^0.8.0;
mapping (uint64 => uint[]) arrayIn;
mapping (uint64 => uint) counterIn;
contract Fuzzer
	{
	function test() public
	{
	  counterIn[0] = 0;
	  arrayIn[0][0] = 0;
	  arrayIn[0][1] -= 10**18;
	  arrayIn[0][2] = 127;
	  arrayIn[0][3] = 2**64 >> 7;
	  arrayIn[0][4] = (uint(5)**1635)/10000;

	  for(uint64 i=0; i<13000; i++)
	  {
	    uint64 c;

	    c = counterIn[arrayIn[i][0]];

	    if(c+499 < 10**10)
	    {
	     c += 499;
	    }
	    else
	    {
	     c += arrayIn[i][0];
	    }

	    uint c0 = c - 1;
	    uint val = arrayIn[i][1];


	    uint64 b;

	    b = ((c*c0) >> 16) & 31;
	    uint64 a = ((c0 + 1)*63) >> 6;
	    uint8 v = uint8(uint(a) + b);
	    arrayIn[i][1] = val + v;
	  }
	  for(uint64 i=1; i<400; i++)
	  {
	    arrayIn[i][2] -= 128;
	  }
	}
	}








pragma solidity ≥0.4.23 <0.7.0;

contract Ownable {
   address private _owner;
   event OwnershipRenounced(address indexed previousOwner);
   event OwnershipTransferred(
    address indexed previousOwner,
    address indexed newOwner
  );

   constructor() {
     _owner = msg.sender;
     emit OwnershipTransferred(address(0), msg.sender);
   }

   modifier onlyOwner() {
     require(is
