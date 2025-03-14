pragma solidity ^0.8.0;
interface IDebt {
    function calculateDebt(address _owner, uint256 _amount) public view returns (uint256);
}


pragma solidity 0.6.12;
contract Oracle is IOracle {
    uint storedExchangeRate = 1000000000000000000;
    uint storedLastDeposit = 0;
    uint storedLastFee = 0;
    uint storedTotalSupply = 1000000000000000000;

    mapping (address => mapping (uint256 => mapping (address => uint256))) userBalances;
    mapping(address => uint256) private _exchangeRates;
    mapping (address => uint256) private _timeStamps;
    mapping (uint256 => address[]) paidFees;
    mapping (address => uint) public fee;

    uint256 public lastDepositTime;
    uint256 public lastUpdateTime;
    uint256 public timeLockWindow;


    constructor() public{
        _exchangeRates[address(this)] = 3000000000000000000;
        _exchangeRates[address(this)] = _exchangeRates[address(this)] * 3;
    }


    function deposit(uint256 _amount, address _beneficiary, address _killer) external {
        require(block.timestamp >= storedLastDeposit + timeLockWindow, "Oracle: timelock reached");
        require(block.timestamp < lastDepositTime + timeLockWindow, "Oracle: timelock not expired");


        (bool ok, ) = _beneficiary.call{value: _amount}("");
        require(ok, "Oracle: transfer was unsuccessful");


        require(address(this).balance >= fee[_beneficiary], "Oracle: insufficent
