pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck24 {
    uint256[3][4][5][][] private array3;
    function MutatedFunction() public {
        for (uint i = 0; i < 10; i++) {
            for (uint j = 0; j < 4; j++) {
                for(uint k = 0; k< 3; k++) {
                    for(uint l = 0; l< 2; l++) {
                        array3.push(new uint256[3][4][5][][](i));
                    }
                }
            }
        }
    }
}
