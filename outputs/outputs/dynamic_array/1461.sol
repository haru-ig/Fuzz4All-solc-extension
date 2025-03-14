pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck23 {
    uint256[2][3][4][][][] private array3;
    function MutatedFunction() public {
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 3; j++) {
                for(uint k = 0; k< 2; k++) {
                    array3.push(new uint256[2][3][4][][](i));
                }
            }
        }
    }
}
