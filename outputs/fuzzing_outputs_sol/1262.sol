pragma solidity ^0.8.0;
contract ModifierEquivalenceMutated {
        receive() external pure {}
}
library Math {
        function max(uint a, uint b) internal pure returns (uint) {
                return a >= b? a : b;
        }
}
