pragma solidity ^0.8.0;
contract Mutator
{
    address payable internal owner;
    address payable internal addr;
    event Called(uint indexed gasLeft);

    function initialize(address payable _addr) public payable
    {
        owner = _addr;
        addr = _addr;
        emit Called(uint(address(this).balance));
    }

    function call() public view
    {
        require(addr!= address(0), "addr must be a valid address");
        (bool success, ) = addr.call{ value: msg.value }("");
        require(success, "transaction failed");
    }
}
