pragma solidity ^0.8.0;
contract Caller
{
    address testContract;

    constructor()
    {

        testContract = msg.sender;
    }


    function send() external payable
    {
        try Caller(testContract).send1(msg.sender) {}

        catch ERC20.Transfer(address(0), address(this), 1 ether) { }
    }

    function send1(address toaddress) external payable
    {
        try Caller(testContract).send2(toaddress) {}

        catch ERC20.Transfer(address(this), address(0), 1) { }
    }

    function send2(address toaddress) external payable
    {
        try Caller(testContract).send3(toaddress) {}

        catch ERC20.Transfer(address(0), address(this), 1) { }
    }

    function send3(address toaddress) external payable
    {
        try Caller(testContract).send4(toaddress) {}

        catch ERC20.Transfer(address(0), address(this), 1) { }
    }

    function send4(address toaddress) external payable
    {
        try Caller(testContract).send5(toaddress) {}

        catch ERC20.Transfer(address(0), address(this), 1) { }
    }

    function send5(address toaddress) external payable
    {
        try Caller(testContract).send6(toaddress) {}

        catch RevertTest { }
    }

    function send6(address toaddress) external payable
    {
        try Caller(toaddress).callTo1(msg.sender) {}

        catch RevertTest { }
    }

    function callTo1(address toaddress) public
    {
        try Caller(toaddress).callTo2(msg.sender) {}

        catch RevertTest { }
    }

    function callTo2(address toaddress) public
    {
        try Caller(toaddress).callTo3(msg.sender) {}
