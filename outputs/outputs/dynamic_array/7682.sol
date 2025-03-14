pragma solidity ^0.8.0;
contract Test17_semanticsDiff_1{
            uint R;
        uint T;
        function r(uint a, uint b) public{
                T=0;
                return;
        }
    }

pragma solidity ^0.8.0;
contract Test17_semanticsDiff2_1{
            uint A;
            function a() public{
                uint D;
            }
            function b() public{
                uint E;
            }
    }

pragma solidity ^0.8.0;
contract Test17_semanticsDiff3_1{
            uint A;
            uint B;
            function a() public{
                A=A+B;
            }
            function b() public{
                B=B+B;
            }
    }

pragma solidity ^0.8.0;
contract Test17_semanticsDiff4_1{
            uint A;
            uint B;
            uint C;
            uint D;
            function a() public{
                C=A+C;
            }
            function b() public{
                B=B+B;
            }
            function c() public{
                C=A+B+C;
            }
            function d() public{
                D=B+C;
            }
    }

pragma solidity ^0.8.0;
contract Test17_semanticsDiff5_1{
            uint T;
            uint A;
            function a() public{
                A=2;
            }
            function b() public{
                T= A + T;
            }
    }

pragma solidity ^0.8.0;
contract Test17_semanticsDiff6_1{
            uint A;
            uint B;
            uint C;
            uint D;
            function a() public{
                while(true){



                    /* D
