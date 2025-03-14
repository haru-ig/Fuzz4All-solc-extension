pragma solidity ^0.8.0;
contract MyContract {
    uint myuint;
    uint constant myconst = 3 * 6 / 9;
    function f() public {
        myuint += myconst;
        myuint *= myconst;
    }
}
pragma solidity ^0.8.0;
contract YourContract {
    uint constant x = 2;
    function f(uint a, uint b) public pure returns (uint)
    {
        return a + b;
    }

    function f(uint a, uint b) public pure returns (uint, uint)
    {
        return (a + b, a * b);
    }
}
