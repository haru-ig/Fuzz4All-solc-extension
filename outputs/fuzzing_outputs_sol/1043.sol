pragma solidity ^0.8.0;
contract Caller {
    function doSendEther(address payable payee, uint amount) public {
        require(amount > 0, "amount invalid");
        payee.transfer(msg.value);
    }
    function doSendEthereum(address payable payee, address payable sender) public {
        doSendEther(sender, 1 ether);
    }
}
