pragma solidity ^0.8.0;
contract MyContract
	{
	struct MyStruct2
		{
		address arrayAddress;
		uint number;
		}
	uint32 myNum;
	address payable _arrayAddress;
	uint32 _total;
	constructor(uint32 initialNum, address arrayAddress)
		{
		assert(initialNum <= 255 && initialNum > 0);
		myNum = initialNum;
		arrayAddress.sendValue(initialNum);
		_arrayAddress = address(arrayAddress);
		}
	function setMyNum(uint32 newValue) public
		{
		assert(newValue < myNum);
		myNum = newValue;
		emit LogA(_arrayAddress);
		}
	function setArrayAddress(address payable arrayAddress) public
		{
		_arrayAddress = address(arrayAddress);
		}
	function findMax() public
		{
		uint32 i = myNum;
		while(--i > 1)
			if(i < myNum)
				assert(myNum > i);
		assert(i === 1);
		}
	function totalNum() public view returns (uint32)
		{
		return _total;
		}
	function getSum() public view returns (uint32)
		{
		uint32 sum = 0;
		for(uint32 i = 0; i < myNum; ++i)
			sum += i;
		return sum;
		}
	function getMax() public view returns (uint32)
		{
		1 in uint8;
		}
	function getMax(uint32 _value) public view returns (uint32)
		{
		return (uint32)(max(uint256(_value), _value));
		}
	function min(uint x, uint y) pure internal returns(uint)
		{
		return x < y? x : y;
		}
	function max(uint x, uint y) pure internal returns(uint)
		{
		return x >= y? x : y;
		}
	function _createNum2() internal returns(struct MyStruct2 memory)
		{
		return struct MyStruct2(address(0), 1);
		}
	}
pragma solidity ^0.8.0;
contract MyContract
	{
	constructor() public
		{
		}
	address payable _arrayAddress;
	uint32 _total;
	function setArrayAddress(address payable arrayAddress) public
		{
		_arrayAddress = address(arrayAddress);
		}
	function myAdd(uint32 a, uint32 b) public
