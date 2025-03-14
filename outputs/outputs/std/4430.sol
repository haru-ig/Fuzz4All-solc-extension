pragma solidity ^0.8.0;
contract Mod32
{
	address a;
	uint my1 = 2;
	uint my2 = 3;
	uint my3 = 4;

	function h(uint m) public
	  {
		uint my1 = m;
		uint my2 = my1 % 32;
		uint my3 = 32 - my2;
		}
	}

pragma solidity ^0.8.0;
interface Test
	{
	function f ( ) public return (uint);
	}
interface A
	{
	function g() public returns (uint);
	}
contract B
	{
	A a;
	uint public my;
	constructor (address p) public
	{
		a = A( p );
		a.g();
	}
	function test ( ) public
		{
			require( a.g() == 32 );
		}
	}
contract C
	{
	uint public my;
	B b1;
	address owner;
	constructor ( address p ) public
	{
		owner = p;
		b1 = B( p );
	}
	constructor ( B b ) public
	{

		b1 = b;
	}
	function test ( ) public
	{
		require( owner == b1.a );
	}
	}
contract Test
	{
	mapping (uint => uint) table;
	mapping (uint32 => uint) table2;
	mapping (address => uint) table3;
	uint public a;
	function test( uint32 my ) public
	{
		table [my] = my;
		table2 [my + 1] = my;
		table3 [address( uint(1e9) )} = 9000000;
		}
	}
contract Array6
{
	using Address for uint;
	using Mod32 for uint;
	address[] public a;
	uint public b;
	constructor () public
	{
		a = new address[]( 32 );
		a [0] = 1;
		b = 1 + a[0].add ( b );

		a[0] = 2;
		b = b.mod32();
	}
	}
contract Array31
{
	uint[16] public a;
	constructor () public
	{
		a = 1.mod16();
	}
	function test ( ) public
	{
		require( a == 15 );
	}
	}
contract Array06
{
	address[]
