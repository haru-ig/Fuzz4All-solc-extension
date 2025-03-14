pragma solidity ^0.8.0;
contract SemanticCheckSemanticsV4 {
    function add3(uint a)
        public pure
        returns(uint)
    {

        uint b = 1;
        a = a + uint ((b + 1) / 2);
        uint c = 100 * ((uint (8) - 100) / (uint (8) / 25));
        a = 100 + uint (10 + 10 + 10);
        a = uint(2 * a + 2 * b) + uint (a + 1) - uint (1 + 10) + uint (a + 1 + 10);
        c += a * 8 - 100 * (a >= 100);
        b = 5 / (a | b);
        return a + ((b - 1) % 10) * 100 * b * 0.00;
    }
}
