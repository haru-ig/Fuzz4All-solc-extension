pragma solidity ^0.8.0;
contract SemanticCheckPreserved {
    struct F {
        address value;
        uint constant field = 0;
    }

    F s;
    constructor() { s.value = 0x0; }

    function check_negate_negate()
        public returns(bool)
    {
        return false;
    }

    function check_negate_assignment()
        public returns(bool)
    {
        s.value = -s.value;
        return true;
    }

    function check_negate_swap()
        public returns(bool)
    {
        address temp = s.value;
        s.value = s.field;
        s.field = temp;
        return true;
    }

    function check_negate_bitwise()
        public returns(bool)
    {
        return s.value >> uint(0) == 0;
    }
}

library TestLibrary {
    using SemanticCheckPreserved for SemanticCheckPreserved.F;
}
