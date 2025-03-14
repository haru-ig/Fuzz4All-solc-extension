pragma solidity ^0.8.0;
contract SolveAssembly5
{
        function test() public pure returns(uint)
        {
            uint y = 0x123;
            uint z = 0x456;
            uint k;
            assembly
                {


                mstore(0xd13a4, add(0x1000, 1000))
                mstore(0xd13ac, mload(0xd13b8))
                mstore(0xd1340, mload(0xd13ac))
                mstore(0xd13e0, mul(0xd1340, z))
                mstore(0xd1344, sub(0xd13e0, y))
                mstore(0xd13e4, mload(0xd1344))


                mstore(0xd1345, k)
                add(0xd1345, 0xd13e4)
            }
            return 0x123;
        }
}
```

**Part 4: Solidity Compiler**

A very important point when writing Solidity code for the first time is to understand how to compile it. With many other programming languages, this kind of compilation includes the intermediate text, which is converted into executable code. CompilingSolidity to EVM bytecode requires a tool and is very complex, taking the form of the [Solidity compiler](https:
