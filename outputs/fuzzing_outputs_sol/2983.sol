pragma solidity ^0.8.0;
contract NotAllowedToSendEther {
    uint256 notAllowed;

    function () external {
        _;
    }

    function fallbackTo(uint256 value) public {
        notAllowed = value;
    }
}
