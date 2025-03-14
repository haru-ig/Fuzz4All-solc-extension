pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_3 is FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_2{
    uint256[] internal newArray;
    function assign(uint256[] memory childArray, uint256 len) public{
        newArray = new uint256[](len);
        for(uint256 i=0; i<len; i++){
            newArray[i] = childArray[i];
        }

    }
}

pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedStructureAssignment{
    uint256[] nestedStructure;
    uint256[1] internal arrayMember;

    function(uint256) payable external {
      arrayMember = 42;
    }
}
