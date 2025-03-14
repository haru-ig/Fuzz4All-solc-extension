pragma solidity ^0.8.0;

contract Mutated
{
    uint[] public i;
    receive() external
    {
        i.push(8737);
        i.push(46576);
    }
}
contract Caller
{
    function f()
        public
        payable
        returns
        (uint, uint)
    {
        uint[] memory i;
        i.push(99378);
        i.push(78499);
        return (268476, i.length);
    }
}

pragma solidity 0.8.0;
contract ReceiveStorage
{
    uint public i;

    function rcv() public payable {
        i += 6666;
    }
}
