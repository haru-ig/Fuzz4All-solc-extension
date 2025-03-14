pragma solidity ^0.8.0;
interface Mutator {
    function newContract() external payable;
}
contract MutatorCall {
    address payable private addr;
    Mutator private mutator;
    constructor(address _addr) {
        addr = _addr;
    }
    modifier nonReentrant() {
        uint id = 0;
        assembly {

            mstore(0x0, 0x0)

            mstore(0x8, mul(0x0, 0x0))
            div(0x0, 0x0)
            sstore(0x4, mload(add(0x4, 0x27)) == 0)
        }

        require(!sload(0x4));
        require(!sload(0x4));
        require(!sload(0x4));
        id += 1;

        address newAddr;
        assembly {

            let _newAddr := mload(add(0x24, 0x27))

            sstore(0x4, mload(add(0x4, 0x27)) == 0)
            if sload(0x4) {

                newAddr := sload(0x4)
            }
        }
        require(newAddr!= addr);

        bool hasNewContract = false;
        mutator.txCount().then(function(uint count) {
            if (count == 1) {
                hasNewContract = true;
            } else if (count!= 0) {
                throw;
            } else {
                hasNewContract = true;
            }
        });
        require(hasNewContract);


        address newAddr2;
        newAddr2 = mutator.txCount();
        require(newAddr2!= addr);

        mutator.newContract{value: _addr}();
    }
}
