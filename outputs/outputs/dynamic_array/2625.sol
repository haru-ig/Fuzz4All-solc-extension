pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_orig8{
    uint[] a;
    modifier mod1 {
        a.push(1);
        a.push(1);
        _;
    }
    modifier mod2(uint y) {
        a.push(y);
        a.push(y);
        _;
    }
    modifier mod3(uint z) {
        a.push(z);
        a.push(z);
        _;
    }
    constructor () public {
        a.push(3);
    }
    function test() public {}
}
contract SemanticEquality_ArrayMutations17_orig5 is SemanticEquality_ArrayMutations17_orig8{
    function test2() public {}
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_orig{
    uint[] a;
    uint[] b;
    uint v;

    constructor () public {
        a = new uint[](4);
    }

    modifier mod1 {
        a.push(0);
        a.push(0);
        _;
    }

    modifier mod2(uint y) {
        a.push(y);
        a.push(y);
        _;
    }

    modifier mod3(uint z) {
        a.push(z);
        a.push(z);
        _;
    }

    function test() public {}

    function test2() public {

        mod1
        mod1
        v = a[0].add(a[1]);
    }

    function test3() public {

        mod1
        a.push(4);
        mod1
        v = a[2].add(a[1]);
        b = a;
    }


}
