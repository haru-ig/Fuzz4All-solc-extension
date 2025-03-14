pragma solidity ^0.8.0;
contract SimpleStorageReceiver {
    uint constant private val = 9;
    function fallback() receive {
        require(msg.value == val);
    }
}
