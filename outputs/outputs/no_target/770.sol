pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV4 is SemanticCheckSemanticsImperfectArithmeticV4 {
   function add4(uint256 a)
    public pure
    returns(uint256)
    {
        return uint256(a * (-1)) + uint256(1) + uint256(a * 1) - uint256(1) + a;
    }
}

contract SemanticCheckSemanticsImperfectArithmeticV4 {
    uint256 public a = 500;
    function add5(uint256 b)
        public pure
        returns(uint256)
    {
        b -= a;
        uint256 c = a - b;
        c += a - uint256 (b + 50);
        return c;
    }
    function add6(uint256 c)
        public pure
        returns(uint256)
    {
        uint256 d =  b + c;
        return d * c;
    }
    uint256 public x = a;
    uint256 public y = uint256(0);
    function add7(uint256 c)
        public pure
        returns(uint256)
    {
        x = d * c;
        return x + ((a - b) + (uint256(1000) * (-2)));
    }
    function add8(uint256 b)
        public pure
        returns(uint256)
    {
        y = y - b;
        return uint256(y * (-b)) - uint256(1);
    }
    function add9(uint256 b)
        public pure
        returns(uint256)
    {
        uint256 c = x * b;
        return uint256(uint256(a) * (c + (-1)));
    }
    function add10(uint256 c)
        public pure
        returns(uint256)
    {
        uint256 d = x * c;
        x = c; c = a;
        x = c * d; c = c + b;
        c = c - (0);
        uint256 y = b; uint256 z = uint256(0);
        return c * (uint256(0) + x + (uint256(1000) * (-10))));
    }
    function add11(uint256 c)
        public pure
        returns(uint256)
    {
        uint256 d = a + x;
        uint z = a - b + c / (x
