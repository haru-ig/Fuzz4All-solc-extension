pragma solidity ^0.8.0;
contract B {
    address public admin;
    mapping(address => uint) balances;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }
    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
    function safeBalanceOf(address _addr) external view returns (uint) {
        if (_addr == address(0)) {
            return 0;
        } else {
            return balances[_addr];
        }
    }
    function deposit(uint _amount) public payable {
        uint oldBalance = safeBalanceOf(msg.sender);
        balances[msg.sender] = oldBalance.add(_amount);
    }
}

pragma solidity ^0.8.0;
contract B is B {
    address public admin;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }
}
contract Test {
    address public immutable creator_;
    address public immutable admin_;
    Test constructor(address _creator, address _admin) public {
        creator_ = _creator;
        admin_ = _admin;
    }
    modifier onlyCreator() {
        require(msg.sender == creator_, "Only contract creator can call");
        _;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin_, "Only contract admin can call");
        _;
    }
    struct Transaction {
        address sender;
        uint amount;
        bytes32 hash;
    }
    mapping(bytes32 => Transaction) txmap_;
    function addTransaction(address _sender, uint _amount, bytes32 _hash) public onlyCreator returns (uint oldBalance_){
        require(txmap_[_hash].sender == address(0));
        txmap_[_hash] = Transaction({
            sender: _sender,
            amount: _amount,
            hash: _hash
        });
        uint oldBalance = safeBalanceOf(txmap_[_hash].sender);
        txmap_[_hash].sender = address(this);
        safeAddToBalance(_sender, _amount, oldBalance);
        return oldBalance;
    }
    function removeTransaction(bytes32 _key) public {
        Transaction memory transaction;
        transaction = txmap_[_key];
        delete txmap_[_key];
