pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
abstract contract Counter {
        uint seq;

        constructor() {
                seq = 0;
        }
        function next() public pure returns (uint) {
                ++seq;
                return seq;
        }
}
