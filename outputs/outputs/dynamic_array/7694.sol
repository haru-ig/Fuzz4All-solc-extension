pragma solidity ^0.8.0;
contract Test18_semanticsSame_4{
        uint A;
        uint B;
        mapping(uint => uint) C;
        uint D;
        function c(uint a, uint b, uint c) public{
            A = 0;
            this.D = 0;
            A = 0;
            C[0] = 0;
            A = 0;
        }
    }
