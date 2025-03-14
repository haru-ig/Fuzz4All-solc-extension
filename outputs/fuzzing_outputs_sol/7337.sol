pragma solidity ^0.8.0;
contract DamagedFallbackCaller{

    receive() external payable {}

}
contract DamagedFallbackReceivers{
    address receiver;
    receive() external payable {
        receiver.send{value: 5 ether}("");
    }
}
