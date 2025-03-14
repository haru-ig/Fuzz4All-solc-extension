pragma solidity ^0.8.0;
contract Lib
{
    uint public totalDividends;
    uint private _totalDividends;
    event DividendsReceived(uint amount, uint fee);
    function setDividendsAmount(uint dividendAmount) public {
        _totalDividends = dividendAmount;
        totalDividends = _totalDividends;
    }
    function getTotalDividends() public view returns (uint) {
        return totalDividends;
    }
    function getNextDividendAmount() public view returns (uint) {
        return Lib.getDiv(_totalDividends, 2);
    }
    function divide(uint amount, uint divisor) public {
        require(amount <= divisor, "amount cannot be greater than divider");
        uint dividendAmount = Lib.getDiv(amount, divisor);
        totalDividends = dividendAmount;
        emit DividendsReceived(amount, dividendAmount);
    }
    function getDividendAmount(uint i) public view returns (uint) {
        return Lib.getDiv(i, 2);
    }
    function setDividendAmount(uint i, uint amount) public {
        totalDividends[i] = amount;
        emit DividendsReceived(i, amount);
    }
}
