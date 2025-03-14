pragma solidity ^0.8.0;
mapping(uint256 => address) public map;
contract EquivalentSolidity
{
    function test(uint256 i, address a) public view
    returns (address result)
    {
        result = map[i];
    }
    function get(uint256 i) public view returns (address)
    {
        return map[i];
    }
    function set(uint256 i, address a) public view
    {
        map[i] = a;
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    function test(uint256 i, address a) public view
    returns (address result)
    {
        result = map[i];
    }
    function get(uint256 i) public view returns (address)
    {
        address memory c = mapping(uint256=>address).at(mapping(uint256=>address).at(i));
        return c;
    }
    function set(uint256 i, address a) public view
    {
        mapping(uint256=>address).at(mapping(uint256=>address).at(i)) = a;
    }
}

pragma solidity ^0.8.0;
contract EquivalentSolidity
{
    modifier test(uint256 i)
    {
        require(i < 10);
        _;
    }
    function test(uint256 i) public
    {
        if (mapping(uint256=>address).at(mapping(uint256=>address).at(i)) == 42)
        {
            revert();
        }
    }
    function test(uint256 i, bool) public
    {
        if (mapping(uint256=>address).at(mapping(uint256=>address).at(i)) == 42)
        {
            revert();
        }
    }
    function test(uint256 i, bool, uint8) public
    {
        if (mapping(uint256=>address).at(mapping(uint256=>address).at(i)) == 42)
        {
            revert();
        }
    }
    function test(uint256 i, bool,
