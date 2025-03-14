pragma solidity ^0.8.0;
contract SemanticCheckSemanticsPerfectArithmeticV4 {
    function add3(uint a)
    public
    pure
    returns(uint)
    {
        require((100 % uint(uint(a) + 25)) == 0);
        require(uint(uint(a) + 100) == 0);
        uint b = a + 1;
        uint c = a + b;
        uint10 d = a + uint (b + uint(b + 5));
        require(uint(c) == a + ((10 + uint(0) * b) + uint160(b)));
        require(uint(c) == d);
        uint e = a + uint (uint(uint(uint(uint(0) ) ) ) + b - uint (uint(uint(uint(uint(uint(uint(uint(uint(0) ) ) ) ) + d) + uint(b + 100))));
        return e + e + uint(uint(uint(uint(uint(0) ) ) ) + 1500 + 25);
    }
}
