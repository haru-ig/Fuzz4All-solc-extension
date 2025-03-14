pragma solidity ^0.8.0;
contract Modifier {
    modifier modifier1() {
        _;
        return 0;
    }
    modifier modifier2() {
        _;
        return x;
    }
    modifier modifier3() {
        _;
        return 0;
    }
    function call() public pure {
        assembly {
            let x
            let n
            mstore(add(x, 0x40), mload(n))
            mstore(n, 0x00)
        }
    }
}
contract Caller {
    Storage storage;
    constructor() {
        storage.call();
    }
}
