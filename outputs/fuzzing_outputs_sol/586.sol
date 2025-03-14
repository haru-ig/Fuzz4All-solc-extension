pragma solidity ^0.8.0;
contract TestNoSemantics
{
    address public owner;
    mapping(address => uint256) public accounts;
    uint256 public balance;
    constructor()
    {
        owner = msg.sender;
        balance = 10;
    }
    function modifyA() public
    {
        accounts[msg.sender] = 1;
    }
    function f() public
    {
        uint256 balance1 = accounts[msg.sender] - 1;
        balance += balance1;
    }
    function modifyB() public
    {
        accounts[msg.sender] -= 1;
    }
    function modifyC() public
    {
        accounts[msg.sender] += 1;
    }
}

pragma solidity ^0.8.0;
contract TestNoInterfaces
{
    address public owner;
    uint256 public balance;
    modifier interfaceUsed(uint32 i)
    {
        require(ERC721Interface(0xfab472928bf14a7b341fa17d32cf9ed34707f975).supportsInterface(i), "ERC721Interface: Unsupported interface.");
        _;
    }
    constructor()
    {
        owner = msg.sender;
        balance = 10;
    }
    function modifyA() public
    {
        uint256 balance1 = accounts[msg.sender] - 1;
        balance += balance1;
    }
    function modifyB() public interfaceUsed(uint32 i)
    {
        require(ERC721Interface(0xfab472928bf14a7b341fa17d32cf9ed34707f975).supportsInterface(i), "ERC721Interface: Unsupported interface.");
    }
    function modifyC() public interfaceUsed(uint32 i)
    {
        require(ERC20Interface(0x5e07cE1CAA7cEdC9f2a602B0E8730C2B2c22f1D2).supportsInterface(i), "ERC20Interface: Unsupported interface.");
    }
    function modifyD() public interfaceUsed(uint32 i)
    {
        require(msg.sender == 0xf5356235d8a863b8dc7b744d3
