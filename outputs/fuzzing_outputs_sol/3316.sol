pragma solidity ^0.8.0;
contract Caller {

    function getBalance() external view returns (address sender, uint balance) {
        (, balance) = address(this).call{value: address(this).balance}("");
        sender = msg.sender;
        return;
    }

}
