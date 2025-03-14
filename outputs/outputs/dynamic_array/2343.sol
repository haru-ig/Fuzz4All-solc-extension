pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedNestedArrayAssignment{

    constructor(){
        for(uint i=1;i<=3;i++){

            dynamic[] memory newElement = new dynamic[](i);
            for(uint j=0;j<i;j++)
                newElement[j] = dynamic(int256(i*j));
        }
    }
}
