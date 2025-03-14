pragma solidity ^0.8.0;
contract Test {
    function assert(uint256 a, uint256 b) immutable public {
        require(a > 0 && b < 255, 'Error');
    }
}
