pragma solidity ^0.8.0;
contract MyContract {
    address public contractAddress;
    uint   public balance;

    uint   public constant BILLION = 1e18;
    uint internal _totalSupply = BILLION;

   mapping(address => uint)    _balances;
    uint internal _decimals;
    constructor() {
        _balances[contractAddress] += 1;
        balance = 1;
    }
    function increase() public onlyOwner() ifLessThan(balance, 1000, 10000) {
        revert("increase");
    }
    function decrease() public onlyOwner() ifLessThan(balance, 0, 1000) {
        revert("decrease");
    }
    function decrease(uint _amount) public onlyOwner returns (bool) {
        ifLessThan(_amount, balance, balance);
        balance -= _amount;
        _balances[contractAddress] -= _amount;
        return true;
    }
    modifier onlyOwner() {
        require(
            contractAddress == msg.sender,
            "Caller doesn't own "
        );
        _;
    }
    function totalSupply() public view returns (uint256) {
      return _totalSupply;
    }
    function balanceOf(address _addr) public view returns (uint) {
      return _balances[_addr];
    }
    function _transfer(address _addr, uint _amountWithoutBills) internal returns (uint256 retAmount){
        _totalSupply -= (BILLION/(10**10));
        retAmount = _balances[_addr] - _amountWithoutBills;
        _balances[_addr] = retAmount;
        _balances[contractAddress] += (BILLION/(10**10));
