pragma solidity ^0.8.0;
contract Token is IToken {


    mapping (address => uint256) internal balances;



    mapping (address => uint256) internal allowed;



    function initializer() public {
        balances[msg.sender] = initialBalance();
    }


    function approveTransfer(address _to, uint256 _amount, uint256 _limit, uint256 _rate, uint256 _min) public returns (bool) {

        IToken t = IToken(_to);
        if (_min > 0) {
            if (balances[msg.sender] < _min) {
                return false;
            }
        }

        allowed[msg.sender] = allowed[msg.sender].add(_amount);
        balances[_to] = balances[_to].sub(_amount);
        if (balances[_to] >= _limit) {
            balances[_to] = balanceOf(_to).sub(_limit);
        }
        t.transfer(msg.sender, _amount);
    }


    function transfer(address _to, uint256 _amount) public returns (bool success) {

        balances[msg.sender] = balances[msg.sender].sub(_amount);
        balances[_to] = balances[_to].add(_amount);
        emit Transfer(msg.sender, _to, _amount);
        return true;
    }


    function transferByContract(address _to, uint256 _amount) public returns (bool success) {
        balances[
