pragma solidity ^0.8.0;
contract Test {
    mapping (address => uint) balances;
    modifier onlyOwner() {
        require(_msgSender() == owner);
        _;
    }

    function _mutate(uint _amount) external onlyOwner returns (bool) {
        balances[msg.sender] += _amount;
    }

    function mutate(address _recipient, uint _amount) external onlyOwner returns (bool) {
        balances[_recipient] += _amount;
        return _mutate(_amount);
    }

    function balance() public view returns (uint) {
        return balances[msg.sender];
    }
}
