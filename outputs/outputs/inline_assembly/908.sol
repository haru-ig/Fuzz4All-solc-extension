pragma solidity ^0.8.0;
library Incrementer {
    function increment_internal() internal pure returns(uint) {
        return 1;
    }
    function increment_external() external pure returns(uint) {
        return 1;
    }
}
