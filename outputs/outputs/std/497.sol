pragma solidity ^0.8.0;
contract test2{

    mapping(address => uint256) public balanceOfTest2;

    event Test2Event(address indexed _spender, uint256 _value);

    constructor() public {
        balanceOfTest2[msg.sender] = 100;
    }

    function increaseBalanceTest2(address _to) public returns(uint256){
        balanceOfTest2[_to] += 1;
        emit Test2Event(_to, 1);
        uint256 new_balance = balanceOfTest2[_to];
        return new_balance;
    }

    function decreaseBalanceTest2(address _from, uint256 _amount) public returns(uint256){
        require(balanceOfTest2[_from] >= _amount, "Not enough balance");
        balanceOfTest2[_to] -= _amount;
        emit Test2Event(_to, _amount);
        uint256 new_balance = balanceOfTest2[_to];
        return new_balance;
    }

    function increaseBalanceTest2Function() public returns(uint256){
        uint256 _currentBalance = balanceOfTest2[msg.sender];
        balanceOfTest2[msg.sender] = _currentBalance + 1;
        return _currentBalance;
    }

    function decreaseBalanceTest2Function(address _from) public returns(uint256){
        uint256 _currentBalance = balanceOfTest2[_from];
        require(balanceOfTest2[_from] >= _currentBalance, "Not enough balance");
        balanceOfTest2[_from] -= _currentBalance;
        return _currentBalance;
    }
}
