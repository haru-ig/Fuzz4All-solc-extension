pragma solidity ^0.8.0;
contract Test58 {

    struct B {
        uint32[][] a;
        uint32[2][2] a1;
    }
    uint8 g(B memory b) internal pure returns (uint32 memory[2] memory) {
        if (b.a[0][0] + b.a[1][0] == 10)
            return b.a[0][0];
        return b.a[1][0];
    }
    function f() public pure returns (B memory) {
        B memory b;
        for (uint32 i = 0; i < 2; i++) {
            b.a[i] = b.a[i+1];
        }
        return b;
    }

}
