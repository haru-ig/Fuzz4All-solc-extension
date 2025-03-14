pragma solidity ^0.8.0;
contract Test19_semanticsSame_3 {
        mapping(uint=>uint) B;
        mapping(uint=>uint) A;
        uint B2;
        uint A2;
        function test1(uint b3){
            uint C;
            B2;
            A2;
            C;
        }
        function test2(uint a3, uint a4){
            uint B;
            uint B2;
            uint B22;
        uint C;
        A2 = 10;
        A2;
        B22 = 6;
        B2 = 2;
        B;
        test1(4);
        B2;
        B2;
        test1(3);
            B22 = 6;
        A2;
        A22 = 6;
        A2;
        A22;
        test1(3);
}
