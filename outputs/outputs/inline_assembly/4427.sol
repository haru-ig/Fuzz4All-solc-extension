pragma solidity ^0.8.0;
contract Emulator8 {
    uint x = 1;
    mapping(address=>address) public _balances;
    event Withdraw(address indexed account, uint amount);
    function withdraw(uint amount, address beneficiary) public {
        require(x >= amount);

        _balances[msg.sender] = beneficiary;
        _balances[beneficiary] = (_balances[beneficiary] - amount);
        emit Withdraw(msg.sender, amount);
        x = x-1;
    }
    function computeBalances() public view returns (uint) {
        return (uint(_balances[address(this)])) + uint(_balances[address(this)]));
    }
    function balanceOf(address _owner) public view returns (uint) {
        return _balances[_owner];
    }
}
