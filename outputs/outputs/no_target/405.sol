pragma solidity ^0.8.0;
contract Semantic2Changed6 {
    function balance5() public pure {
		uint a = 0;
		assert((a + 1 >= a) && (a + 1 <= a));
    }
}
