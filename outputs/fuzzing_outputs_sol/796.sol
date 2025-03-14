pragma solidity ^0.8.0;
contract PayableFallbackModficationSemanticExample {

    modifier withoutFallback {
        require(msg.value >= 100000000 ether, "Invalid message");
        _;
    }

    function fallback() public payable withoutFallback {
        uint _datastorage;
        uint256 i;
        for (i = 0; i < 50; i++) {}
    }
}
