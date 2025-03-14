pragma solidity ^0.8.0;
contract ReceiverMutatingFallback {
    uint256 private _balance;
    address payable address_;

    constructor() {
        address_ = payable(msg.sender);
        uint256 initialBalance = address_.balance;
        bool success;
        assembly {



            success := calldatacopy(0, 0, add(1, div(mul(0xfffffffffffffffffffffffffffffffffffffffffffffffefffffc2f, initialBalance), sub(0x1000000000000000000000000000000000000000000000000000000000000))))
        }


        if (success && (add(1, div(mul(success, 0xfffffffffffffffffffffffffffffffffffffffffffffffefffffc2f), sub(0x100000000000000000000000000000000000000000000000000000000000000)))) == initialBalance) {
            emit A(address_);
            _balance += uint256(initialBalance);
        }
    }

    fallback() external payable {}
}
