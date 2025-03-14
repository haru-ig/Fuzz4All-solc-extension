pragma solidity ^0.8.0;
contract Test18_semanticsSame_4{
            uint A;
            uint B;
            mapping(uint => uint) C;
            uint D;
            function b(uint a, uint b) public {
                if(B==0){
                    return;
                }else{
                    A=a;
                    A = a + A;
                }
            }
            function c(uint a, uint b, uint c, uint d) public{
                uint E=A;
                uint F = 0;
            }
        }

pragma solidity ^0.8.0;
contract Test18_semanticsSame_5{
            function a(uint a) public {
                uint B = b(a);
                B = b(B);
            }
            function b(uint a) public {
                return;
            }
        }

pragma solidity ^0.8.0;
contract Test18_semanticsSame_6{
            function a(uint a) public {
                if(A==0){
                    return;
                }
                uint B = b(a);
                B = b(B);
                uint C;
                C+= C + A;
                uint D;
            }
            function b(uint a) public {
                return;
            }

        }
