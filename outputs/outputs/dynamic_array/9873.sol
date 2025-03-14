pragma solidity ^0.8.0;
contract SemanticTest_v5 {
    mapping (address => mapping(uint256=>uint256)) balances;
    constructor(uint256 _mintAmount0, uint8 _mintAmount1) public {
        balances[msg.sender][uint256(0)] = _mintAmount0;
        balances[msg.sender][uint256(1)] = _mintAmount1;
    }
}
interface IERC20 {
    function balanceOf(address _owner) external view returns (uint256 balance);
    function transfer(address _to, uint256 _value) external returns (bool success);
}
contract SemanticTest_v5_Token {
    function addReceivable(address _to) public;
}
