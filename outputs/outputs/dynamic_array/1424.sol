pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    uint256[][][] public array;
   function MutatedFunction() public {
       array.push(new uint256[][]());
       array.push(new uint256[7].push(100));
   }
}
