pragma solidity ^0.8.0;
uint constant ONEHUNDREDTON = 1e18;
uint constant SOMETHING_BIG = 0x7fffffffffffffffL;
address constant SOMETHING_BIG_ADDRESS = 0x800000000000000000000000000000000000001;
address constant SOMETHING_BIGGER_ADDRESS = 0x010000000000000000000000000000000000001;

pragma solidity ^0.8.0;
uint constant FOUR = 4;
uint constant FIVE = 5;
uint constant ZERO = 0;
uint constant MAX = 0xffffffffffffffff;
uint constant MIN = 0;

pragma solidity ^0.8.0;
function add(uint x, uint y) public pure returns (uint) {
	return x + y;
}

pragma solidity ^0.8.0;
struct EquivalentToPreviouslyGenerated
{
	uint16 x;

	function add(uint number) public pure returns (uint) {
	return number + 1;
	}
}
pragma solidity ^0.8.0;

struct A {
	uint8 x;

	uint256 constant CONSTANT_A = uint256(1);
}
pragma solidity ^0.8.0;

 assembly {
	contract A {
		uint CONSTANT_A = 1;
	}
}
contract A {
	uint CONSTANT_A = 1;
}
