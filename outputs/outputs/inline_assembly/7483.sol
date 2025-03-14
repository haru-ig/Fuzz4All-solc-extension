pragma solidity ^0.8.0;




contract Test {
    uint256 public value = 42;

    function test() public pure {
    	uint256 value = 42;
        assembly {
    		value := value * 3
        }

        assert(value == 42*(3));
    }
}
