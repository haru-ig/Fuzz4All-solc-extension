pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType3 is SemanticsEquivalentEfficientDynamicArrayType2 {
    function MutatedFatal() public {
        for (uint i = 0; i < 2; i++) {
            for (uint j = 0; j < 2; j++) {
                for (uint k = 0; k < 2; k++) {
                    for (uint l = 0; l < 3; l++) {
                        for (uint m = 0; m < 4; m++) {

                            array3.push(new uint256[3][][](77));
                        }
                    }
                }
            }
        }
    }
}
