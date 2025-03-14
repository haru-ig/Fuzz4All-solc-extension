pragma solidity ^0.8.0;
contract Mutator{
            function modify() public{
                    uint A;
                    uint B;
                    C[0] = B;
            }
        }

pragma solidity ^0.8.0;
contract CompilerBug{
            function f(uint[] memory) public{
                    uint X;
            }
            function g(bool[] calldata) public{
                    uint X;
            }
        }
