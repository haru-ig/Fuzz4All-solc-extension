pragma solidity ^0.8.0;
contract mutatedCaller3 {
    receive() external pure {}
    function receive() public pure {}
    function fallback() external pure { }
    fallback() external pure { }
}

contract Caller2 {
    constructor() { }
    receive() public pure { }
    fallback() external pure {
        assembly {
            let result := add(gas, calldataload(0))
            let data := mload(0x40)
            let success := eq(result, 0)
            let to := jump(3)

            if success {
                returndatacopy(to, data, 32)
            } else {
                let code := mload(0x40)
                mstore(0x40, add(code, to))
            }
        }
        if (msg.data.isEmpty()) {
            revert(msg.data, codeSize)
            return;
        }
        if (msg.data.isContract()) {
            msg.data.call.value(0)();
            return;
        }

        _fallback(msg.data);
    }


    fallback() external payable { }


    function _fallback(bytes32 _data) internal { }
}
