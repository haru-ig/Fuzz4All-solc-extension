pragma solidity ^0.8.0;
contract StaticConstructor {
    uint[] y;
    constructor(uint t) public {
        for (uint i = 0; i < t; ++i) {
            y[i] = uint(i);
        }
    }
    function f(uint i) public view {
        y[i];
    }
}






<fim_middle>contract DOSVector {
    mapping (uint => uint) a;
    uint[] b;

    constructor(uint t) public {
        for (uint i = 0; i < t; ++i) {

            assert(b.length < uint(127)

            );
            b[b.length] = uint(i);
            a[i] = 4;
        }
    }

    function f() public pure returns (uint) {
        return (uint(0) + a[b[uint(64)-1]]);
    }
}
