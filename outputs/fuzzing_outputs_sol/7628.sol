pragma solidity ^0.8.0;
contract FallbackModification
{
    address public immutable addr;
    constructor(address _addr)
        public
    {
        addr = _addr;
    }
    function write()
    {
        addr.transfer(address(new FallbackModification(addr)));
    }
}

pragma solidity ^0.8.0;
contract Caller
{
    address public immutable addr;
    address payable public payee;
    event EtherSent(address to);
    constructor(address _addr)
    {
        addr = _addr;
        payee = payable(addr);
    }
}
