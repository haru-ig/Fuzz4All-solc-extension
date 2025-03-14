pragma solidity ^0.8.0;
contract Test2 {
    mapping(uint => uint[]) s2;
    uint i;
    constructor() {
        uint[3] memory i;
        i[0] = 0;
        i[1] = 1;
        i[2] = 2;
        s2[0] = i;
    }
    function test() public returns(uint[]) {
        uint[] memory tmp;
        tmp = s2[0];
        return tmp;
    }
    modifier m1 {
        uint[] o = test();
        bool b = false;
        for (uint i = 0; i < o.length; i++) {
            uint x = o[i];
        }
        o[0] = 10;
        uint c = 2;
        assert (b && c == 2);
        _;
    }
}
