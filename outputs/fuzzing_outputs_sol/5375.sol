pragma solidity ^0.8.0;
contract badmapmap
{
    mapping(uint8 => mapping(uint8 => bool)) private _map = new mapping(uint8 => mapping(uint8 => bool));
    function f(uint8 key0, uint8 key1) public
    {
        _map[key0][key1] = true;
    }
    function g() public
    {
        f(128, 128);
    }
}

pragma solidity ^0.8.0;
contract caller
{
    function payable_fallback()
        receive() returns (uint)
    {
        return address(this).balance;
    }
    function receive() payable
    {
        require(true);
    }
}
