pragma solidity ^0.8.0;
contract Test7 {
    bytes32[][] a;
    constructor() {
        assembly {

            a := mload(0x400000)
            mstore(0x400000, add(a, 0x2000))

            mstore(add(a, 0x2000), 0x12341234)
            mstore(add(a, 0x2010), 0x56785678)

            mstore(add(a, 0x2030), add(a, 0x2000))
        }
    }
    function s() public pure returns (uint) {
        return 0;
    }
}
