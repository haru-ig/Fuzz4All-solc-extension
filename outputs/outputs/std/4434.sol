pragma solidity ^0.8.0;
contract Multiprecision
	{
	string a;
	constructor () public { a = "One"; }
	function f(uint my) public
	  {
	   a = "One";
	   a[0] = "a";
	   a = a + "b";
	   a = uint2str(a);
	   a = uint2str(4);
	   a = uint2str(-2147483648);
	   a = uint2str(-2147483647);
	   a = uint2str(-2147483647 + 1);
	   a = uint2str(-2147483647 - 1);
	   a = uint2str(4 + 4 + 4);
	   a = uint2str(4 - 4 - 4);
	   a = uint2str(4 * 4 * 4);
	   a = uint2str(4 / 4 / 4);
	   a = uint2str(4 % 4 % 4);
	   a = uint2str(4 + 1 / ( 1 * 4 + 4 ));
	   a = uint2str(2 + 2 + 2 + 2 + 2 + 2 - 1 + (-30000 + 1) );
	   a = strcombine(a,"");
	   a = uint2str(2147483647 - 1);
	   a = uint2str(uint2str(256*128));
	   a = uint2str(256*128 + 1);
	}
	function f1(uint my) public
	  {
	   strcombine("1b","");
	   strcombine("a","b");
	   uint256 myx = uint256(uint(a));
       uint256 myaox = myx + 7;
       a = uint2str((uint2str(my) * 256 * 128) + 1);
       a = uint2str(uint(a)) / 256 * 128 / 128 / 128 + 1;
	}
	function g(uint myx) public
	  {
	   a = uint2str(myx + 7);
	 }
	function g1(uint myx) public
	  {
	   a = uint2str(myx + 7);
	 }
	function uint2str(uint128 my) public
	  {
	   uint128 b = uint256(int(my));
	   bytes32 ab = uint256(int(my));
	 }
	function strcombine(string calldata x,string calldata y) public pure returns (string memory)
	  {
	   bytes memory ba = bytes(
