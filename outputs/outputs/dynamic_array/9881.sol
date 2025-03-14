pragma solidity ^0.8.0;
contract SemanticTest_v10 {
    mapping(address => uint256) balances;
    constructor(uint256 _mintAmount) public {
        balances[msg.sender] = _mintAmount;
    }
}

pragma solidity ^0.8.0;
contract SemanticTest_v {
    constructor(uint128 _mintAmount) public {
        balances[msg.sender] = _mintAmount;
    }
}
