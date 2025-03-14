pragma solidity ^0.8.0;
contract CallerMutator {
    bytes32 constant testdata = '1234567890';
    bool hasFallback;
    bytes32 public signature = testdata;
    function fallback() public {
        if (recoverSigner(msg.sender) == signature) {
            hasFallback = hasFallback || (hasFallback == true);
        } else {
            hasFallback = false;
        }
    }
    function test() public {
        hasFallback = hasFallback && hasFallback;
    }
}
