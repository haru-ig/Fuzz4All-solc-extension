pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV3 {
    function sub3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        c = a + a + a + b;
        return c;
    }
}
contract SemanticCheckSemanticsImperfectArithmeticV2 {
    function sub3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        c = a + a;
        c = a + a + a + a;
        return c;
    }
}
contract SemanticCheckSemanticsImperfectArithmeticV1 {
    function sub3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        uint d = a + a + a + a;
        uint e = a + a + a + a + a;
        uint f = a + a + a + a + a + a;
        c = a + a + a + a + a + a + a;
        d = a;
        e = a + a + a + a + a + a + a + a + a;
        return c;
    }
}
contract SemanticCheckSemanticsImperfectArithmetic {
    function sub3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        uint d = a + a;
        uint e = a + a + a + a;
        return c;
    }
}
contract SemanticCheckSemantics {
    function sub3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        uint d = a + a + a + a;
        uint e = a + a + a + a + a;
        uint f = a + a + a + a + a + a;
        c = a;
        d = a + a;
        e = a + a + a + a + a + 1;
        return d;
    }
}
contract SemanticCheckSemanticsModular {
    uint public x;
    modifier m1 {
        x = 0;
        _;
    }

    uint a;
    uint b;
    modifier m2() {
        b = 2;
        a = 1;
        x++;
        _;
        x--;
        b--;
        a--;
    }

    function test111110()
    public view
    returns(uint, bool)
    {
        if (a == 0 || b!= 2 |!x == 0) {
            return (0, false);
        }
        return (1
