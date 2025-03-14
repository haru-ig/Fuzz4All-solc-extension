pragma solidity ^0.8.0;
contract ContractMutator {
    function set1() public {
        addr = msg.sender;
    }
    function set2() public {
        addr = tx.origin;
    }
    function pay(uint x) public payable {
        addr.transfer(x);
    }
}


event FallbackSenderReceived(address indexed fallbackSender, uint totalEth, uint valueToPay);
contract ContractFallbackReceiver {

    fallback() external payable {}

    event ReceivedEther(uint totalEth, uint storedValueInContract);

    uint storedValueInContract;

    function get() public view returns (uint) {
        if(fallbackSender() == this) {
            return storedValueInContract;
        }
        else {
            throw "Fallback receiver contract mismatch";
        }
    }
    function fallbackSender() public view returns (address) {
        return msg.sender;
    }
    function pay(uint x) public payable {
        storeValue(x);
    }
    function storeValue(uint x) private {
        storedValueInContract += x;
        emit ReceivedEther(msg.value, storedValueInContract);
    }

    receive() external payable {}
}
contract ContractFallback {
    address payable fallbackSender;
    function set(address x) public payable {
        fallbackSender.transfer(x);
    }
    function pay(uint x) public payable {
        fallbackSender.transfer(x);
    }
}
