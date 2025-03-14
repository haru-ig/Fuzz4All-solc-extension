pragma solidity ^0.8.0;
contract FallbackMutated{
    uint a=1;
    function mutate_() public pure returns(uint) {
		return 1;
    }
}
