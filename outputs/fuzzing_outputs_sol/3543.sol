pragma solidity ^0.8.0;
contract SimpleFallback {
    fallback () external {
        _;
    }
}

pragma solidity ^0.8.0;
contract Caller {

    receive () external payable {
        string memory message = "Pay you Ether";
        assembly {
            let amount := mload(add(32, sp))
            mstore(add(msg.value, 0x40), add(calldataload(add(32, sp)), amount))
            returndatacopy(24, 0x0, add(32, sp))
            returndatacopy(add(32, sp), 24, add(32, sp))
            mstore(add(sp, 0x20), add(amount, msg.value))
            returndatacopy(add(0x20, sp), 0x0, add(sp, 0x20))
            returndatacopy(30, 0x0, add(sp, 0x20))
            returndatacopy(add(sp, 0x48), 0x0, amount)

            let contractBalance := mload(add(20, sp))
            let contractAddress := mload(add(0x20, sp))
            assembly {
                let res := calldatacopy(add(sp, 0x48), contractAddress, add(0x20, sp))
                mstore(add(contractAddress, 0x40), add(contractBalance, add(res, add(amount, mload(add(addr(0x40), 0x10)))))
            }
        }
    }
}
