pragma solidity ^0.8.0;
contract Caller {
    struct CallData {
        address value;
        uint256 size;
    }
    mapping (bytes memory => CallData) memory callDataMap;

    function (bytes memory s, bytes memory p) external {
        CallData callData = callDataMap[string(bytes(s) + string(bytes(p)) - 1)];
        ( ) value;
        ( ) payable(callData.value);
        memory storage data = memory(callData.size);
        ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) ( ) {
            require(gasleft() >= callData.size);
        }
    }
    function memory(uint256 size) pure internal returns (memory memory) {
        return memory(1);
    }
}
