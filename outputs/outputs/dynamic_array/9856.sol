pragma solidity ^0.8.0;
contract SemanticTest_v6b {
    uint256[] x;
    constructor() public {
    x.push(4294967296);
    x.push(4294967297);
    x.push(4294967295);
    }
}

interface IERC20 {
        function decimals() external view returns(uint8);
        function transfer(address _to, uint256 _value) public returns(bool);
        function transferFrom(address _from, address _to, uint256 _value) public returns(bool);
        function approve(address _spender, uint256 _value) public returns(bool);
        event Transfer(address indexed _from, address indexed _to, uint256 _value);
        event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}
