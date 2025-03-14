pragma solidity ^0.8.0;
contract Mutate
{
    address payable payee;
    uint mut val;

    function Mutate() public
    {
        setPayee(msg.sender);
    }

    function MutateInt(uint a, uint b) public  pure returns(uint)
    {
        return (a-b);
    }
    function setPayee(address payable _payee) public
    {
        address oldAddress = payee;
        require(oldAddress == 0);
        payee = _payee;
    }
}
