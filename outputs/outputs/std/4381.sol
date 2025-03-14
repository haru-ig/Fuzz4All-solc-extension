pragma solidity ^0.8.0;
contract Mutated
	{
	function mutatedArray(uint _a1, uint _b1) public
		{
	   _a1 -= _b1;
	}
	function MutatedAddress() public {
		uint _0x30 = 30;
		 assembly {
			mstore(add(0x110000000000000000, 0x110000000000000000), _0x30)
		}
	}
	}

pragma solidity ^0.8.0;
contract ImmutableData
	{
	uint	 public num;
	function initializeData() public
		{
		_initializeData();
		}
	function _initializeData() internal returns (bool) {
		num = num.sub(1);
		return true;
	  }
	}
pragma solidity ^0.8.0;
contract ImmutableData
	{
	uint	 public num;
	function initializeData() public
		{
		bool _00;
		_initializeData();
		}
	function _initializeData() public {
		num = num.sub(1);
		}
	}
