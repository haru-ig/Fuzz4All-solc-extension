pragma solidity ^0.8.0;
contract mutated_abi6 {
    uint256 constant constant_variable = 42;
    function update_const_variable() public {
        constant_variable++;
    }
}

pragma solidity ^0.8.0;
contract mutated_abi7 {
    event E(address sender, uint256 a, uint256 b);

    constructor() public {
  	E(msg.sender, uint256(keccak256(abi.encodePacked(msg.sender))), constant_variable);
        log0(uint256(keccak256(abi.encodePacked(msg.sender))) + 1));
    }
    function update_const_variable() public {
        constant_variable++;
    }
}
