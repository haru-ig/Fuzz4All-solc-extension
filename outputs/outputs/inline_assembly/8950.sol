pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X
    {
        uint y;
    }

    constructor () public {

    }
    function set(X memory m) public {
        require(m.y > 0);
        m.y;
        m.y;
    }
    function test(X memory m) public returns (uint256) {
        require(m.y > 0);
        m.y % m.y;
        m.y * m.y;
        m.y / m.y;
    }
    function get(X memory m) public view returns (uint256) {
        return m.y;
    }
}
