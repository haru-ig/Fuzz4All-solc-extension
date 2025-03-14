pragma solidity ^0.8.0;
contract Receivers {
    receive() external payable {}
}
contract Caller{
    uint256 public balance;
    address receiver;
    receive() external payable {
        (receiver).call{value: 5 ether}("");
        if (balance!= 5 ether) {
            if (&Receiver(receiver)!= address(new Receiver(address(0)))) {
                selfdestruct(receiver);
            }
        }
    }
}
contract Receiver {
    receive() external payable {}
}
