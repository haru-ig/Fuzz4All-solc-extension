pragma solidity ^0.8.0;
contract SemanticEquivalence_MutatedArrayResize{
    uint [][] arrayOne;
    uint [][] arrayTwo;
    uint [][] arrayThree;
    uint [][] arrayFour;
    uint [][] arrayFive;
    uint [][] arraySix;
    uint [][] arraySeven;
    constructor()public{
        uint [][] memory o1 = arrayOne;
        uint [][] memory o2 = arrayOne;
        uint [][] memory o3 = arrayOne;
        o1[0] = arrayOne;
    }
}
