pragma solidity ^0.8.0;
contract NewSolidity {
    struct MemoryObject {
        int foo;
    }

    struct MyClass {
        uint[] mfoo;
        MemoryObject[] mobjects;
    }

    address[] public owners;
    mapping (address => mapping (uint => uint)) public balancePerOwner;
    mapping (uint => mapping (address => uint[])) public _balancesPerOwner;
    mapping (address => mapping (uint => uint)) public _balancePerOwner;
    mapping (address => bool) public _allowance;
    mapping (uint => uint) public _nonce;
    mapping (address => uint) public _allowances;

    function MyContract_constructor(address owner) {
        owners.push(owner);
    }

    function MyContract_setBalance() {
        address sender = msg.sender;
        balances[sender] += msg.value;
        balancePerOwner[sender][_nonce[sender]++] = msg.value;
        _balancesPerOwner[uint(msg.value)][sender] += uint(msg.value);
        _balancePerOwner[sender][uint(msg.value)] += uint(msg.value);
    }

    function MyContract_transferEther(address payable receiver, uint amount) {
        uint newBalance = amount;
        uint oldBalance = balances[receiver];
        require(newBalance > 0);
        balances[receiver] = newBalance;
        require(newBalance - oldBalance == amount);

        balances[owner] -= amount;
        balancePerOwner[owner][_nonce[owner]++] = amount;
        _balancesPerOwner[uint(amount)][owner] += uint(amount);
        _balancePerOwner[owner][uint(amount)] += uint(amount);
        receiver.transfer(newBalance);
    }

    function MyContract_withdrawEther(address payable receiver) {
        uint newBalance = balances[receiver];
        uint oldBalance = balances[owner];
        require(newBalance > 0);
        balances[receiver] = newBalance;
        require(newBalance - oldBalance == amount);
        balances[owner] -= amount;
        balancePerOwner[owner][_nonce[owner]++] = amount;
        _balancesPerOwner[uint(amount)][owner] += uint(amount);
        _balancePerOwner[owner][uint(amount)] += uint(amount);
        receiver.transfer(newBalance);
    }

    function MyContract_approve(address spender, uint amount) internal {
        address sender = msg.sender;
        allowances[sender][spender] = amount;
        balancePerOwner[sender][_nonce[sender]++] = amount;
        _balancesPerOwner[uint(amount)][sender] += uint(amount);
