pragma solidity ^0.8.0;
contract HighLevel {
    function sendEtherToHighLevel() public payable {}
}
contract Caller {
    function contractCalling() public {}
    function contractFallback() public payable {
        LowLevel(address(this)).sendEtherToLowLevel(address(HighLevel{}));
    }
    receive() external payable {}
}
