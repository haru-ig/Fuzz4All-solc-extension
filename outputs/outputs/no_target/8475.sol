pragma solidity ^0.8.0;
contract Mutated {
    uint64 public a;
    uint64[8] public b;
    uint256 c;
    constructor (
        uint64 _value1,
        uint64[8] memory _value2,
        uint256 _value3
    ) public {
        a = _value1 + 10;
        b = _value2;
        c = _value3;
    }
    function set (
        uint64 a,
        uint64[8] memory b,
        uint256 c
    ) public {
        a = a + 10;
        b = b;
        c = c + 10;
    }
    }


pragma solidity ^0.8.0;
contract Test {

    constructor() public {
        Mutated0 t = new Mutated0(0xab, [0xbe, 0xef, 0xad, 0xbe, 0xef, 0xad, 0xbe, 0xef], 0xc0);
        Mutated mut = new Mutated.Mutated(0xab, [0xbe, 0xef, 0xad, 0xbe, 0xef, 0xad, 0xbe, 0xef], 0xc0);
        assert(t.a == mut.a);
        assert(t.b[0] == mut.b[0]);
        assert(t.b[1] == mut.b[1]);
        assert(t.b[2] == mut.b[2]);
        assert(t.b[3] == mut.b[3]);
        assert(t.b[4] == mut.b[4]);
        assert(t.b[5] == mut.b[5]);
        assert(t.b[6] == mut.b[6]);
        assert(t.b[7] == mut.b[7]);
        assert(t.b[8] == mut.b[8]);
        assert(t.b[9] == mut.b[9]);
        assert(t.b[10] == mut.b[10]);
        assert(t.b[17] == mut.b[17]);
        assert(t.b[18] == mut.b[18]);
