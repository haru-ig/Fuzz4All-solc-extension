pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Convert {}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Math {}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mem {}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MultiPrec {}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Rand {}

pragma experimental ABIEncoderV2;
contract Array {}



contract Test {
	function test(address[] memory a) internal view {
		assertEq(getArraySize(a), 0);
	}
}
