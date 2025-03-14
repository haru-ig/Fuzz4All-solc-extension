pragma solidity ^0.8.0;
contract NonSemanticSolidityPointers {

    contract NonSemanticSolidity {
        function test1() public pure returns (uint) {
            NonSemanticSolidityMemory memory temp = NonSemanticSolidityMemory(0x0);
            temp.arr[0] = 0x1;
            temp.p1 = NonSemanticSolidityPointers(0x0);
            temp.p1.arr[0] = 0x2;
            return uint(temp);
        }
    }
}
