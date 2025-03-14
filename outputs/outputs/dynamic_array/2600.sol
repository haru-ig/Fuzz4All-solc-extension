pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod2{
    uint[] a;
    modifier mod1 {
        a[0]+=1;
        _;
    }
    modifier mod2(uint y) {
        a[0]+=y;
        _;
    }
    constructor () public {
        a[0]+=1;
    }
    function test() public {}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod3{
    bytes32[] a;
    modifier mod1(uint x) {
        a[1][0]=bytes32(uint(x));
        _;
    }
    constructor () public {
        a[1][0]=bytes32(uint(0xffffffff));
        a[2]+=1;
    }
    function test() public {}
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod4{
    bytes32[] a;
    modifier mod2() {
        a[1][0]=bytes32(uint(0));
        _;
    }
    modifier mod3(uint x) {
        a[1][x+1]=bytes32(uint(0));
        _;
    }
    constructor () public {
        a[1][0]=bytes32(uint(2));
        a[2]++;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod5{
    bytes32[] a;
    modifier mod1(uint x) {
        a[1][0]=bytes32(uint256(x));
        _;
    }
    modifier mod2(uint256 q) {
        a[2][0]=q;
        _;
    }
    constructor () public {
        a[2][0]=uint256(4);
        a[2][1]=2**1000000000000;
        a[2][2]=uint256(10);
    }
}
