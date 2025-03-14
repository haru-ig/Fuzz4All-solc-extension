pragma solidity ^0.8.0;
import "NonFallbackMutatedFallbackMultiData2.sol";
contract MutatedFallbackMultiData is NonFallbackMutatedFallbackMultiData2 {
    constructor(bytes32 k) public {
        fallbackValue = 3;
        key = k;
    }
    function mutate() public {
        fallbackValue = 4;
        key = "foobar";
    }
}
