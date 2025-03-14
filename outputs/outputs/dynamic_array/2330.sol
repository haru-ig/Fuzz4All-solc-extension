pragma solidity ^0.8.0;
contract SemanticEquivalence_MutationsOn_DynamicallySizedNestedArrayAssignment_ac338618C41b1420e0131215C1868E7E{
    uint [][] calldata one;
    uint [][] memory one;
    contract Call {
        constructor()public{
            uint [][] memory s1;
            uint [][] memory s2;
            uint [][] memory s3;
            uint [][] memory s4;
            uint [][] memory s5;
            uint [][] memory s6;
            uint [][] memory s7;
            uint [][] memory s8;
            s1 = one;
            s3 = one;
            s4 = one;
            s5 = one;
            s6 = one;
            s7 = one;
            s8 = one;
        }
    }
    void Mutate(){

        uint [][] calldata o3 = new uint[3][];
    }
}
