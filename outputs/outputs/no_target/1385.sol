pragma solidity ^0.8.0;
contract Mutate_0024 {
    constructor(uint256 _a) public {
        require(_a > 0,"Bad");
        require(_a >= 0,"Bad");
    }
}
contract Mutate_0025 {
    function f(uint256 _input) public pure {
        assembly {
            mstore(0x10, _input)
        }
    }
}
