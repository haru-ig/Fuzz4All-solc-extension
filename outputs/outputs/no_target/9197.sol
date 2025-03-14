pragma solidity ^0.8.0;
contract smarter {
    mapping (uint => uint) internal state_variable;
    mapping (uint => uint) private state_variable_old;

    modifier f(string memory m) {
        state_variable[uint(keccak256(bytes(m)))] += 2;
        uint z = state_variable[uint(keccak256(bytes(m)))];
        _;
    }

    uint256 constant constant_variable = 400;
}
