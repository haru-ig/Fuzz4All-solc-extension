pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36 {
    struct DYNAMICSTRUCT { uint x; }
    DYNAMICSTRUCT public x;
    constructor() public {
        x.x = 1005;
    }
    modifier set_x_ext(uint in_value) {
        x.x = in_value;
        _;
    }
}
contract SemanticEquality_ArrayMutations37 {
    uint constant NUM_ELEM = 1000;
    uint constant ARRAYSIZE = 3 * NUM_ELEM;

    mapping(address => uint) public a1;
    mapping(address => uint) public a2;

    function test () public {
        a1[address(this)]++;
        a2[address(this)] += NUM_ELEM;
        a1[address(this)] --;
        a2[address(this)] = a1[address(this)] / 2 + a2[address(this)] % 2;
        a1[address(this)] <<= 8;
        a1[address(this)] >>= 8;
        a1[address(this)] |= 128;
        a1[address(this)] = a1[address(this)] / 2 + a1[address(this)] % 2;
        a1[address(this)] <<= 8;
        a1[address(this)] >>= 8;
        a1[address(this)] |= 128;
        a1[address(this)] %= a1.length;
        a2.clear();
        a1.clear();
    }
}
