pragma solidity ^0.8.0;
contract FallbackCaller {
    function getSender() public pure returns (address sender) {
        return msg.sender;
    }
    function getAmount() public view returns (uint) {
        if (msg.value == 1 ether) {
            return msg.value;
        } else {
            return 0;
        }
    }
    receive() external payable {}
}
