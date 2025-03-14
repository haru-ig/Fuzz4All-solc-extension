pragma solidity ^0.8.0;
contract Caller {
    receive () public payable {
        uint12 payable amount;
        assembly {
            amount := mload(add(receipt.input, 32))
        }
        if (amount > 0) pay(amount);
    }
    fallback() external payable {}
}
