pragma solidity ^0.8.0;
contract Beneficiary {
    bool public isBen;
    function setTrueBeneficiary() public {
        isBen = true;
    }
    fallback() external payable whenNotPaused fallbackCallReceiver() {
        if (isBen == false) {
            isBen = true;
            msg.sender.send(msg.value);
        }
    }
    function fallbackCallReceiver() public pure {
        msg.sender.send(msg.value);
    }
}
