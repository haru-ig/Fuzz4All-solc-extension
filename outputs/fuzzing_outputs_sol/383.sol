pragma solidity ^0.8.0;
 contract ContractWithFallbackFunction {
    fallback function foo() external payable { }
}

pragma solidity ^0.8.0;
contract ContractWithFallbackReceive {
    event Received(uint gas, uint value);
    mapping(address => uint) public balances;
    receive () external payable {
        uint _gas = msg.value;
        address _to = msg.sender;
        balances[_to] += _gas;
        emit Received(_gas, _gas);
    }
}
