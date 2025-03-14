pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrectMod {
    uint modulus;
    function setModulus(uint _n)
        public pure
        returns(success)
    {
        modulus = _n;
        return(success);
    }
    function add(uint x, uint y)
        public pure
        returns(uint)
    {
        uint sum;
        assembly {
            sub(sum, sub(x, modulus), y)
        }
        return sum;
    }
}
contract SemanticCheckSemanticsIncorrectMod {
    uint modulus;
    function setModulus(uint _n)
        public pure
        returns(success)
    {
        modulus = _n;
        return true;
    }
    function add(uint x, uint y)
        public pure
        returns(uint)
    {
        uint sum;
        assembly {
            sub(sum, add(x, x), add(y, modulus))
        }
        return sum;
    }
}
