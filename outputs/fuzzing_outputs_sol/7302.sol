pragma solidity ^0.8.0;
contract WithLowLevelCall {
    address public fallback;

    function sendEtherToAddressWithFallBack(uint amount, address payable to, bytes memory data) external payable {
        doLowLevelCall(amount, to, data);
        fallback.transfer(amount);
    }

    function doLowLevelCall(uint amount, address payable to, bytes memory data) payable {
        fallback.transferFrom(msg.sender, to, amount, data);
    }
}
