pragma solidity ^0.8.0;
contract Test74 {
    function j() public pure {
        uint256 a;
        (a) = 2;
    }
}
contract Test75 {
    function k() public pure {
        uint256[2][3][2] memory memoryA;
        uint3[2] memory memoryB;
        (memoryA, memoryB) = (
            memoryA,
            memoryB) + (memoryA, memoryB);
    }
}
contract Test76 {
    function i(uint32 memory) public pure {
        Test72 t1 = new Test72();
        (a, b) = (
            t1.get(),
            memory);
    }
    function get() public pure returns(uint4, uint4) {
        return (
            4,
            2) + (4, 2);
    }
}
contract Test77 {
    uint[1][10][150] a;
}
