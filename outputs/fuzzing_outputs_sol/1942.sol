pragma solidity ^0.8.0;
contract MutatedStorage {
    constructor() {
        assembly {

            let _a := 0x2000
            mstore(add(_a, 0x20), 0x56)

            let _b := 0x3000
            mstore(add(_b, 0x20), 0x59)
        }
    }
    fallback() external payable {

        uint _result = _value * _value;
    }
    receive() external payable {}
}

contract Caller {
    address payable fallbackContract;
    constructor() {
        fallbackContract = new FallbackStorage().address;
    }
    fallback() external payable {
        fallbackContract.transfer(msg.value);
    }
}
