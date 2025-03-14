pragma solidity ^0.8.0;
contract ArrayMut
{
	uint256[] public data;
	address addressArray[6];
	mapping (address => string) addressesAddresses;
	uint256 aSize;
	address[] emptyaddrArray;
	uint256 emptySize;

	uint256[] public addrs;
	uint256 bSize;
	uint256[] public emptyAddrs;
	uint256 emptyBS;
	uint256[] public ints;
	uint256 cSize;


	constructor() public {}

	constructor(uint256 x1, uint256 y1, uint256 x2, uint256 y2, uint256 x3, uint256 y3, uint256 a, uint256 b) public
	{
		data = [x1, y1, x2, y2, x3, y3, a, b];
		addressArray = [address(this), address(this), address(this), address(this), address(this), address(this), address(this), address(this)];
		ints = [x1, y1, x2, b];
		addrs = [address(this), address(this), address(this)];
		cSize = data.length;
		bSize = ints.length;
		int b = ints[1] + ints[2] + bSize + cSize + 1;
	}

	constructor(uint256 _a, uint256 _b, uint256 _a2, uint256 _b2, uint256 _c) public
	{
		emptyAddrs = [];
		aSize = _a2;
		bSize = _a2 + _b2;
		cSize = _c;
		ints = [1, 1, 1, 1];
		emptyBS = 2 + 1;
	}


	function getAddrArray(uint256 a) public view returns(address, address, address, address, address, address, address, address, address, address)
	{
		return

		(addressArray[a], addressArray[bSize + a], addressArray[bSize * 2 + a], addressArray[bSize * 3 + a], addressArray[bSize * 4 + a], addressArray[bSize * 5 + a], addressArray[bSize * 6 + a], addressArray[bSize * 7 + a], addressArray[bSize * 8 + a], addressArray[bSize * 9 + a], addressArray[bSize * 10 + a]);
	}
