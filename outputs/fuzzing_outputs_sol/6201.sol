pragma solidity ^0.8.0;
contract FallbackMutant {
    function fallback() public pure {
    }
    function normalTransfer(address _to) payable public pure returns (bool) {
        return false;
    }
    function normalCall() public pure {
        normalTransfer(0x00);
    }
    function internalCall() public pure {
        normalCall();
    }
    function externalCall() public pure {
        externalCall();
    }
}
