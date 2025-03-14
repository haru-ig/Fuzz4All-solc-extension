pragma solidity ^0.8.0;
contract FallbackPure {
    uint a=1;
    function pure_() public pure returns(uint) {
        return 1;
    }
}
