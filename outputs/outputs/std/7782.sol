pragma solidity ^0.8.0;
contract MutatedProgram {
    function f(uint32 index1) public pure returns (uint32) {
        return index1;
    }
    function fMut(uint32 index2) public returns (uint32) {
        uint32[] memory index3 = new uint32[](2){index2,index1};
        index3[1] = index2;

        index3 = index3.map(uint32(uint8(index2)));
        if (!index2 == 0) {
            return fMut(uint32(uint8(index2) - 1));
        }
        return f(f(f(uint32(uint8(index2))))));
    }
}

pragma solidity ^0.8.0;
contract ComplexProgram {
    function f(uint32 index1, uint8 index2) public pure returns (uint32) {
        if (index1 == 0) {
            return index2;
        }
        return f(uint32(uint8(index1) - 1),uint8(index2));
    }
    function G(uint32 index) public beforeF beforeG{
        return f(index, uint8(2));
    }
}


contract Contract {
    function test() public pure {
        ComplexProgram Complex = ComplexProgram();
        Complex.G(3);
    }
}
