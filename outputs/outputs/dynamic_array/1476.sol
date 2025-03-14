pragma solidity ^0.8.0;
contract MutatedSemanticsEquivalentEfficientDynamicArrayType2 {
    uint256[2][][][] private array3;
    function MutatedFatal() public {
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 3; j++) {
                for(uint k = 0; k< 3; k++) {
                array3.push(new uint256(i));
                }
            }
        }
    }
}
