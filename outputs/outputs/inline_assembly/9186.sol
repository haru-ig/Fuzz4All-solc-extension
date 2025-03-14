pragma solidity ^0.8.0;
contract A {
        uint64 constant public _uint64 = 16**60;
        function mutated(uint) public pure returns (uint) {
                return (uint) (_uint64 * (_uint64 - 1));
        }
}
