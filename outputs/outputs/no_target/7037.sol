pragma solidity ^0.8.0;
contract Test {
    uint public test;
    constructor (uint test_) public {
        test = test_;
    }
    function changeTest(uint test_) public {
        test = test_;
    }
    function revertTest() public {
        assembly {
        let ptr := mload(0x40)
        let x := mload(ptr)
        let y := mload(0x40)
        mstore(0x40, add(x, 0x20))
        mstore(ptr, add(y, 0x10))
        mstore(0x40, x)
        }
    }
}
