pragma solidity ^0.8.0;

contract Caller {
    function get() public returns (uint) {
        return address(this).balance;
    }




    receive() external payable { }
}



pragma solidity ^0.8.0;

contract CallerFallback {
    function get() public payable fallback() {
        if (msg.value < 1 ether) throw;
    }
}


pragma solidity ^0.8.0;

contract Spendable
{

    uint public amount;

    function Spendable (uint newAmount) {
        amount = newAmount;
    }
    function receive (uint _amount) public payable {
        if (_amount == 5) {
            if (amount == 0) throw;
            amount -= 5;
            if (amount == 0) throw;
            payable(_msgSender()) << uint256(_amount);
        }
        else {
            amount -= 5 - (_amount % 5);
        }
    }

}


pragma solidity ^0.8.0;

contract Two
{
    bool private initialized;


    uint private firstAmount;
    uint private secondAmount;
    address private senderAddress;

    constructor (uint initFirstBalance, uint initSecondBalance, address initAddress) {
        firstAmount = initFirstBalance;
        secondAmount = initSecondBalance;
        senderAddress = initAddress;
    }

    receive() external payable {

        require(!initialized);
        initialized = true;

        if (firstAmount > 0) {
            msg.sender.transfer(firstAmount);
            send(msg.sender, firstAmount);
        }
