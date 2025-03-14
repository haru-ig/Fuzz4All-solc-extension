pragma solidity ^0.8.0;
contract EtherReceiver2 {
    modifier restricted {
        require(msg.value > 1 ether);
        _;
    }

    fallback() public payable { }
}
