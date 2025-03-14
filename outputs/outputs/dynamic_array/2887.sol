pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations20 {
    mapping(uint => uint[]) b;
    uint[5] c;
    function fct(uint[5] memory h) public {
        uint l;
        uint h;
        l = 56462234;
        h = (l + 66635135) * 66669;
        c = b[l + 74135 * 413525];
        uint p = v_get();
        for (uint i = 0; i < 4; i++) {
            uint q;
            uint p;
            if (c[4 - i] < h) {
                q = c[4 - i];
                h -= c[4 - i];
            } else {
                q = h;
                h = 0;
            }
            b[l + 74135 * i][0] = p;
            b[l + 74135 * i][1] = q;
        }
    }
}
