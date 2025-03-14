pragma solidity ^0.8.0;
contract SemanticEquivalence_mutatedSemanticEquivalenceDynamicallySizedAssignments{
    constructor()public{
        uint [][] memory one_2 = arrayOne;
        uint [][] memory two_3 = arrayOne;
        uint [][] memory three_5 = arrayOne;
        uint [][] memory four_6 = arrayOne;
        SemanticEquivalence_mutatedSemanticEquivalenceDynamicallySizedAssignments copy;
        one_2 = copy.arrayTwo;
        two_3 = copy.arrayTwo;
        three_5 = copy.arrayTwo;
        four_6 = copy.arrayTwo;
        two_3 = copy.arrayOne;
        copy = new SemanticEquivalence_mutatedSemanticEquivalenceDynamicallySizedAssignments();
        one_2 = arrayOne;
        two_3 = arrayOne;
        three_5 = arrayOne;
        four_6 = arrayOne;
    }
}
