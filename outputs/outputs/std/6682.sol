pragma solidity ^0.8.0;
contract Mutate77 {
    uint256 constant ONE = 1;
    uint256 constant MAX_INT = (1U << 256) - 1;
    mapping (address => uint256) private balances_;
    mapping (address => mapping (address => uint256)) private allowed_;
    address admin_;
    constructor() public {
        admin_ = msg.sender;
        balances_[msg.sender] = MAX_INT;
    }
    function deposit(uint amount) public returns (bool) {
        require(amount > 0, "Invalid amount must be > 0.");
        require(balances_[msg.sender] >= amount, "Account balance insufficient.");
        balances_[msg.sender] = balances_[msg.sender].sub(amount);
        return true;
    }
    function withDRAW(uint amount) public returns (bool) {
        require(amount > 0, "Invalid amount must be > 0.");
        assert(msg.sender == admin_);
        require(amount <= balances_[msg.sender], "Account balance in excess.");
        balances_[msg.sender] = balances_[msg.sender].add(amount);
        return true;
    }
    function allowed(address owner, address spender) public view returns (uint remaining) {
        return allowed_[owner][spender];
    }
    function approve(address spender, uint256 amount) public returns (bool) {
        require(spender!= address(0), "Can't approve 0");
        require(allowed_[msg.sender][spender] == 0, "spender already approved");
        allowed_[msg.sender][spender] = amount;
        return true;
    }
    function depositAndApprove(uint amount, address spender) public returns (bool) {
        return depositAndApproveByAddr(amount, spender, msg.sender);
    }
    function depositAndApproveByAddr(uint amount, address spender, address owner) public returns (bool) {
        require(amount > 0, "Invalid amount must be > 0.");
        require(balances_[owner] >= amount, "Account balance insufficient.");
        balances_[owner] = balances_[owner].sub(amount);
        allowed_[owner][spender] = amount;
        return true;
    }
    function totalSupply() public view returns (uint supply) {
        return balances_[address(0)];
    }
    function balanceOf(address account) public view returns (uint balance) {
        if (account == address(0)) {
            return 0;
        }
        return balances_[account];
    }
    function approveAndCall(address spender, uint256 amount, bytes memory data) public returns (
