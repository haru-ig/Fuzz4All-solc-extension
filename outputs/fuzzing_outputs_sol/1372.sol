pragma solidity ^0.8.0;
contract EtherFallback {
    function fallback() payable {
        callFallback();
    }
}
