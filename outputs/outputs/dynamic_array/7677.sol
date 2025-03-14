pragma solidity ^0.8.0;
contract Test17_semanticsSame_1{
            uint A=100;
            uint B=50;
            mapping(uint => uint) D;
            uint E=120;
            function a(uint c) public{
                D[E]=A;
                D[0]=E;
                B=0;
                D[0]=0;
                return;
            }
            function b(uint a, uint b) public payable {
                a=a-B;
                D[this]=0;
                D[this]=0;
            }
            function c(uint a, uint b, uint c) public{
                uint E = 0+A;
                uint F = 0;
            }
        }
        contract Test17_semanticsSame_3{
        uint A=100;
        uint B=50;
        mapping(uint => uint) E;
        uint F=120;
        function a(uint a, uint b, uint c) public{
            E[0]=A;
            E[0]=a;
            E[0]=0;
            B=0;
            E[this]=0;
            B=0;
            E[this]=0;
            E[0]=0;
            return;
        }
    function b(uint a, uint b) public payable {
        a=a-B;
        E[0]=0;
        E[0]=0;
        E[0]=0;
        E[0]=0;
        B=0;
        E[this]=0;
        B=0;
        E[this]=0;
        E[0]=0;
        return;
    }
    function c(uint A, uint B, uint C) public{
    E[0]=A;
    E[0]=0;
    B=0;
    E[this]=0;
    B=0;
    D[0]=1;
    B=0;
    E[this]=0;
    D[0]=1;
    E[this]=0;
    return;
    }
  }
