pragma solidity ^0.8.0;
contract Caller
{
    function test() public
    {
        mapmap map = new mapmap();
        address addr = msg.sender;
        map.f.value(0.6 ether)(addr);
        addr.transfer(0.001 ether);
        addr.transfer(0.001 ether);
        map.g();
    }
}
