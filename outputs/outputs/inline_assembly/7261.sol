pragma solidity ^0.8.0;
contract Test {
    uint i = 10;
    function getAndIncrement() public returns (uint i) {
        i = i + 2;
        return i;
    }
}

pragma solidity ^0.8.0;
contract Solidity {
    constructor() {
        i = 10;
    }
    function getAndIncrement() public returns (uint) {
        i = i + 2;
        return i;
    }
}
