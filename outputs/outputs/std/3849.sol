pragma solidity ^0.8.0;
interface IOracle {
    event Deposit(address indexed account, uint256 indexed amount, uint256 timeStamp);
    event Death(address indexed account, address indexed killer);
    event Fee(address indexed account, uint256 amount, uint256 timeStamp);
    event ExchangeRateUpdated(uint256 indexed rate);
    function balanceOf(address _user) external view returns (uint256);
    function getFee() external view returns (uint256);
    function getRate() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function timeStamp(address user) external view returns (uint256);
    function withdraw(uint256 _amount) external;
    function setExchangeRate(uint256 rate) external;
}
