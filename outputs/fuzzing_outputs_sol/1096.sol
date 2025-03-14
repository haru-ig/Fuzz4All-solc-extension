pragma solidity ^0.8.0;
contract ComplexMutation8 {
    function caller(address arg) public pure returns (bool) {
        return true;
    }
library Lib {
    function set(uint156 i) public pure {
        Lib.set(i);
    }
}

pragma solidity ^0.8.0;
contract ComplexMutation {
    bytes private test;

    constructor () {
        Lib.set(0);
        test = 0x00;
    }

    fallback() public pure {
        bytes memory buffer = abi.encode(test);
        Lib.set(1);
        return;
    }
}
