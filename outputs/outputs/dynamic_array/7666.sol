pragma solidity ^0.8.0;
contract Test16_semanticallyEquivalent_2{
            uint A;
            mapping(bytes32 => uint) C;
            function a() public{
                uint[] memory B = [100,100];
                A = B[0];
                B[0]=A+10;
                a();
                a();
                A = 0xFF;
                B[0]=A+10;
                a();
                a();
                A = C[keccak256(abi.encodePacked(A))];
                B[0]=A+10;
                a();
                a();
                A = 0xFF;
                B[0]=A+10;
                a();
                a();
                A = b(B);
                B[0]=A+10;
                a();
                a();
            }
            function b() public{
                C[keccak256(abi.encodePacked([10,10]))]=A+10;
                A=5;
                b();
                a();
                a();
            }
            function c(uint x) public view returns (uint y){
                y = x+100;
            }
            function d(uint[] memory x) public returns (uint[]) {
                x[0]=c(x[0]);
                return x[0:0];
            }
            function e(bytes32 a, uint b) public{
                A=0xFF;
                C[a]=A+b;
                a=b;
            }
            function f() public{
                A=0x2014A380000000000000;
                C[keccak256(abi.encodePacked([10,20]))]=A+0xB80;
                A=0xFF;
                B[0]=A+10;
                a();
                a();
                A = 0xFF;
                B[0]=A+10;
                a();
                a();
                A = 0x12345;
                B[0]=A+10;
                a();
                a();
            }
        }
