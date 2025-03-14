pragma solidity ^0.8.0;
contract Mutate21 {
    function mutate1() public pure returns (uint64) {
        bytes memory b = "Hello there!";
        b = bytes(325);
        return 0xffffffffffffffff;
    }
}
