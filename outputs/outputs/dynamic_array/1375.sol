pragma solidity ^0.8.0;

contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck10 {
    function useDynamicSizeCheck10() public pure returns(int256[],uint256[]){
        int256[] memory array1;
        uint256[] memory array2;

        for(uint i = 0; i < 100; i++) {
          (uint256 a) = 20;
          if(a>0){
              array1 = new int256[](1);
          }
        }
        (uint256 a) = 20;
        if(a>0){
            array2 = new uint256[](1);
        }
        return (array1, array2);
    }
}
