pragma solidity ^0.8.0;
interface TestFallback
{
    function f() external returns (uint);
}
contract TestFallback1
{
    mapping(address => uint16) public accounts;
    constructor()
    {
        accounts[msg.sender] = 1;
    }
    function f(address addr) public view returns (uint)
    {
        return accounts[addr];
    }
}

pragma solidity ^0.8.0;
contract TestFallback2
{
    uint16 public accounts[1] = [1];
    constructor()
    {
        accounts[0] = msg.sender;
    }
    function f(uint256 len) public view returns (uint256)
    {
        uint256 res = 0;
        assembly { res := accounts.add(len) }
        return res;
    }
}
