pragma solidity ^0.8.0;
library ArrayTypeCheck20MutatedMethods {
    function MutatedArray2D1(uint a) public pure returns (bytes[] memory) {
        return [new bytes(3)()];
   }
    function MutatedFunctionWithArray2D2(uint[] mem2) public pure returns (uint[] memory) {
        return [mem2];
   }
}
