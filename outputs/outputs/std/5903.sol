pragma solidity ^0.8.0;
contract SemanticEvidentChanges5 {
    uint256[5] a;
    uint i;
    function f() public returns (uint256) {
        uint m;
        for (i = 0; i < a.length; i = i + 1) {
        if (a[i] < 1)
            i = a.length + 1;
    }
        for (i = 0; i < a.length; i = i + 1) {
        if (a[i] < 1)
            return i;
    }
    i = a.length + 1;
    return 0;
    }
}

contract SemanticEvidentChanges6 {
    function f(uint i) public {
    x = 4**new uint(6) + i + 1;
    }
}
