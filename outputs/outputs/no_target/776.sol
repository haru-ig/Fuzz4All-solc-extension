pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV5 {
    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        return b + a + b;
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV6 {
    function add3(uint a, uint b)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := add(a, b)
        }
    }
}
contract SemanticCheckSemanticsSemanticsV4 {
    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        c = uint(c - 100) + a -uint (100 + 10);
        return c;
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckSemanticsSemanticsV1 {
    function add3(uint a, uint b)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := b + a + b
        }
    }
}
contract SemanticCheckSemanticsSemanticsV3 {
    function add3(uint a, uint b)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := add(b, add(a, (sub(1, b))))
        }
    }
}
contract SemanticCheckSemanticsSemanticsV5 {
    function add3(uint a, uint b)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := (add(add(add(a, b), b), b), b), b)
        }
    }
}
contract SemanticCheckSemanticsSemanticsV6 {
    function add3(uint a, uint b)
        public pure
        returns(uint)
    {
        uint result = (add(add(add(add(add(add(a, b), b), b), b), b), b), b) / ((a * b) + b);;
    }
}
contract SemanticCheckSemanticsSemanticsV7 {
    function add3(uint a, uint b)
        public pure
        returns(uint)
