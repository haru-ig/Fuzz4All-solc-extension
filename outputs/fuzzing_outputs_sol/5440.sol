pragma solidity ^0.8.0;
contract constructormutated
{
    constructor() public {}
}
contract initializercall
{
    function test() public
    {
    }
    function getstorage() public pure returns (uint256)
    {
        return 123;
    }
}
contract initializermutated
{
    function test() public
    {
    }
    function getstorage() public pure returns (uint256)
    {
        return 123;
    }
}
contract initializerfallback
{
    mapping(uint256 => uint256) public map;
    function test() public pure
    {
    }
    function getstorage() public pure returns (uint256)
    {
        return 123;
    }
}
contract receivemutatedfallback
{
    receive() external { write(); }
    function write() public pure {}
}
contract receivenotmutatedfallback
{
    receive() public pure {}
}
contract receivemutatedfallbackaddress
{
    receive() external payable { write(); }
    function write() public pure {}
}
contract receivenotmutatedfallbackaddress
{
    receive() public pure {}
}
contract receivemutatedfallbacknonpayable
{
    receive() external pure {}
}
contract receivenotmutatedfallbacknonpayable
{
    receive() external pure {}
}
contract send_0
{
    constructor()
    {
    }
    function test() public pure returns (uint256)
    {
        return 123;
    }
}
contract send_1
{
    constructor() public
    {
    }
    function test() public pure returns (uint256)
    {
        return 123;
    }
    function getstorage() public pure returns (uint256)
    {
        return 123;
    }
}
contract send_2
{
    receive() external pure {}
    function test() public pure returns (uint256)
    {
        return 123;
    }
    function getstorage() public pure returns (uint256)
    {
        return 123;
    }
}
