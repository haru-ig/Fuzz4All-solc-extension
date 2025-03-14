pragma solidity ^0.8.0;
contract ReceiveTest
{
    event TransactionCreated(address sender, uint amount);
    function () public payable{
        receive();
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract EtherContract
{
    address payable owner;

    constructor() payable
    {
        owner = payable(msg.sender);
    }

    function transferToWallet(uint amount) public payable
    {
        owner.transfer(amount);
    }

    function getAmount() public view returns(uint)
    {
        return address(this).balance;
    }
}
