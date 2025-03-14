pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    struct X { uint256 x; }
    function test(X memory m) public
    {
        m.x = 0;
        m.x;
    }
    function get(X memory m) public view returns (uint256)
    {
        return m.x;
    }
    function add(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x + b.x);
    }
    function mul(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x * b.x);
    }
    function sub(X memory a, X memory b) public pure returns(X memory)
    {
        return X(a.x - b.x);
    }
}

pragma solidity ^0.8.0;
contract inlineAssemblyEquivalentContract
    is EquivalentSolidity
{
    struct X
    {
        uint256 x;
    }
    constructor()
        public
    {
        emit Add(X(1), X(3));
    }
    function add(X memory a, X memory b) public pure {
        a.x += b.x;
    }
}

pragma solidity ^0.8.0;
contract inlineAssemblyEquivalentContract
    is EquivalentSolidity
{
    struct X
    {
        uint256 x;
    }
    mapping(address => X) public xStorage;
    constructor()
        public
    {
        emit Add(X(1), X(2));
    }
    function add(X memory a, X memory b) public pure {
        xStorage[msg.sender] = X(a.x + b.x);
    }
}
