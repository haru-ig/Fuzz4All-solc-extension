pragma solidity ^0.8.0;
abstract contract Contract {
    mapping(address => string) public balances;
    mapping(address => bool) public isContract;
    constructor() {
        balances[tx.origin] = "0x08";
    }
    modifier nonContract() {
        uint balance = address(this).balance;
        balances[msg.sender] = string(abi.encodePacked(address(this), balance));
        balances[tx.origin] = string(abi.encodePacked(address(this), balance));
        isContract[msg.sender] = balance > 0;
        isContract[this] = balance > 0;
        _;
    }
    function transfer(address _to, uint value) public nonContract {
        if (isContract[_to]) {
            isContract[_to] = false;
            balances[_to] -= value;
        } else {
            balances[tx.origin] -= value;
            balances[_to] += value;
        }
        emit Transfer(msg.sender, _to, value);
    }
    function transferFrom(address _from, address _to, uint value) public nonContract {
        if (isContract[_to]) {
            isContract[_to] = false;
            balances[_to] -= value;
        } else {
            balances[_from] -= value;
            balances[_to] += value;
        }
        balances[_from] += value;
        emit Transfer(_from, _to, value);
    }
    function approve(address _spender, uint value) public nonContract {
        require(value == 0 || balances[msg.sender] >= value, "allowance to the sender");
        bool contractExistsInContractCalls = contractCalls[address(this)].length > 0;
        bool _spenderHasApprovenContractCall = contractCalls[_spender][contractCalls[address(this)].length] == keccak256(abi.encode(contractCalls[address(this)][contractCalls[address(this)].length - 1])));
        bool spenderIsFallbackContract = contractCalls[_spender].length > 0;
        if (spenderIsFallbackContract) {
            balances[_spender] -= value;
            balances[_spender].add(_value);
        } else if (isContract[_spender] && contractCalls[tx.origin][0] == 0) {
            emit Approval(msg.sender, _spender, value);
        }
        if (isContract[tx.origin] || contractExistsInContractCalls) {
            contractCalls[msg.origin][contractCalls[msg.origin].length++] = keccak256(abi.encode(contractCalls[address(this)][contractCalls[msg.origin].length - 1])));
        } else if (_spenderHasApprovenContractCall) {
            contractCalls[tx.origin][contractCalls[
