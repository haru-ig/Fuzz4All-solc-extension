pragma solidity ^0.8.0;
contract C3 {
    bytes4 sig;
    constructor() public {
        sig = _foo();
    }
    function _foo() public pure returns(bytes4) {
        return 0x1;
    }
}
