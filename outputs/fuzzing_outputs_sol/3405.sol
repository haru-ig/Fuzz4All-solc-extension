pragma solidity ^0.8.0;
contract Caller {
    EtherStorage _storage;

    function fallback(uint balance_) {
        _storage = new EtherStorage(balance_);
        callEthers();
        sendEthers(balance_);
    }

    function callEthers() internal {
        B(_storage.b).fallback();
    }

    function sendEthers(uint256 n) public payable {
        require(_storage.balance == 0);
        require(msg.value == n);
        _storage.balance = msg.value;
        msg.sender.transfer(n);
    }
}
interface EtherStorage {
    function balance() public view returns(uint);
}
