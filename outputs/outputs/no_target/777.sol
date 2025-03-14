pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV3 {
    function add3(uint a) public pure returns(uint) {


        uint b = a++;
        uint c = a++;



        uint e = uint((a + a) * b);

        uint f = a + b + (((uint(a) + uint(b)) * uint(a)) + (2 * a));




        return a + b + (uint(a) + uint(b));
    }
    function sub3(uint a)
        public pure
        returns(uint)
    {
        uint b = a - 1;
        uint c = a - b;
        return c;
    }
}
