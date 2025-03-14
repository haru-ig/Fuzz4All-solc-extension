pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV4Mutator {
    bool is_overflow;
    bool is_underflow;
    bool is_checked_overflow;
    bool is_checked_underflow;
    bool is_checked_minus_overflow;
    uint value;
    bool is_checked_plus_underflow;
    bool is_checked_plus_overflow;
    uint128 num;
    bytes100 x = 100;
    uint x0 = toUint("0");
    uint x1 = toUint("1");
    uint x1x1 = 100000000000000000000000000000000000000;
    uint x2 = toUint("2");
    uint x2x2 = 10000000000000000000000000000000000000000;
    uint x3 = 100;
    uint x4 = "0";
    uint d = 0;
    uint y = 1001;
    uint z = -1000;
    bytes1000 = 100000000000000000000000000000000000000000;
    uint w = uint(x4);

    constructor(uint val) public {
        value = val;
    }
    function add(uint a)
        public pure
        returns(uint)
    {
        return a + value;
    }
    function add_overflow_add_underflow(uint a)
        public pure
        returns(uint)
    {
        if (is_overflow || is_underflow) {
            return add(a - 1);
        }
        is_checked_plus_overflow = (add(a) >= a);
        return add(a);
    }
    function add_not_underflow_underflow_add(uint a)
        public pure
        returns(uint)
    {
        if (! (is_underflow)) {
            return add(a - 1);
        }
        return add(a);
    }
    function add_overflow_underflow_underflow_overflow_add(uint a)
        public pure
        returns(uint)
    {
        if (! (is_overflow)) {
            return add(a);
        }
        is_checked_plus_overflow = (add(a) >= a);
        return add(a + 1);
    }
    function add_underflow_not_underflow_add(uint a)
        public pure
        returns(uint
