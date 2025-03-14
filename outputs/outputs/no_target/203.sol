pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function f() public pure {
        assembly {
            mstore(0x0, mload(k))
        }
    }
}
