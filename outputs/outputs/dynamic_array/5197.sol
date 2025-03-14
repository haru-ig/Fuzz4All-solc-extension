pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint256[] a;
        bool c;
        uint32[][] a1;
    }
    uint32 f(uint256 v1, uint256[] memory a, uint256 v2) public pure returns (uint32) {
          uint32 result;
        for (uint256 i = 0; i < a.length; i++) {
            if (a[i] == v1) {
                for (uint256 j = 0; j < v2; j++) {
                    result += a[i];
                }
            }
        }
        return result;
    }
    uint256 memory[] memory A = [0,1,2];
    uint32 memory[] memory B;
    struct C {
        uint256 d;
        bool e;
    }
    function f1(uint256 v1, uint32 memory[] memory a, uint256 v2) public pure returns (uint32) {
        B = a;
        return f(v1, a, v2);
    }
    function f2() public view returns (uint32) {
        return f1(0,A,0);
    }
}
