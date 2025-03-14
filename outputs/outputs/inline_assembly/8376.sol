pragma solidity ^0.8.0;
contract SolveAssembly5 {
    function test() public pure returns(uint) {
        uint y;
        bool ret = false;
        while(!ret) {
            _;
        }
        ret = true;
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            _;
        }
        while(!ret) {
            ret;
        }
        while(!ret) {
            ret;
        }
        uint y2 = 0x123;
        assembly {
            mstore(0x0, add(y, y2))
            y := 123
        }
        uint x = 0x123;
        assembly {
            mstore(0x0, add(y, mul(2, x)))
        }
    }
}
