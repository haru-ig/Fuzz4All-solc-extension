pragma solidity ^0.8.0;
contract Fallback {
    function fallback() external {

        if (msg.data.length == 0) {
            EtherStorage.storage.setValue(_val);
        }
    }
}
