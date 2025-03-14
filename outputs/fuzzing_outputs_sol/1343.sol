pragma solidity ^0.8.0;

contract Contract01 {
    constructor(uint a_) {
        require(a_ == 1, "Bad arg in Contract01");
        address payable addr0 = payable(this);
        addr0.transfer(msg.value);
    }
}

contract Contract09 {
    constructor(uint a_) {
        require(a_ == 1, "Bad arg in Contract09");
        uint y = 5;
        assembly {
            addr0 := mload(0x40)
            mstore(addr0, mload(0x40))
        }
        y = 10;
        assembly {
            y := sub(mload(0x40), load(0x0))
        }
        require(y == 1, "Bad result in Contract09");
    }
    uint x;
    uint addr0;
}
