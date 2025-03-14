pragma solidity ^0.8.0;
contract Mutater15 {
    function sendEtherToCaller() public payable {}
    function sendMoney(address _to, uint256 _value) public payable {}
}

pragma solidity ^0.8.0;
contract Mutater15 {
    contract Mutater16 {
        mapping(address => uint256) public balances;
        event Transfer(address indexed _from, address indexed _to, uint256 _value);
        function sendEtherToCaller() public payable {}
        function sendMoney(address _to, uint256 _value) public payable {}
    }
    mapping(address => uint256) public balances;
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    Mutater16 _caller;
    function setCaller(address _newCaller) public {
        require(address(0)!= _newCaller);
        _caller = Mutater16(_newCaller);
    }
    function checkIfCallerHasBalance(address _account) public view returns (uint256) {
        require(address(_caller)!= _account);
        uint256 _balance;
        assembly {
            _balance := balanceOf(_account)
        }
        return _balance;
    }
    function payCallerForTransaction(address _to, uint256 _value) public returns (uint256) {
        address _caller = payable(msg.sender);
        address[] memory _targetAddresses = new address[](3);
        _targetAddresses[0] = _caller;
        _targetAddresses[1] = _to;
        _targetAddresses[2] = _caller;
        _caller.send(_value);
        _caller.send(address(0));
        _caller.send(address(0));
        _caller.send(address(0));
        _caller.send(address(0));
        _caller.send(_value);
        uint256 _amount;
        assembly {
            _amount := value()
        }
        for(uint256 i; i < 3; i++) {
            _callee.send(_amount, _targetAddresses[i]);
        }
        return _caller.send(address(0));
    }
}
