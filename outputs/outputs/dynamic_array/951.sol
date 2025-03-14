pragma solidity ^0.8.0;
contract LotteryWithModifiersCalls {
    uint[] _currentLotteries;

    modifier onlyCurrentLottery(uint nth) {
        require(msg.sender == _currentLottery(msg.sender));
        _;
    }

    function getLottery(address addy) public view returns (uint) {
        uint idx = uint(addy) % _currentLotteries.length;
        return _currentLotteries[idx];
    }

    function setLottery(address addy, uint newNth) public onlyCurrentLottery(newNth) {
        uint idx = uint(addy) % _currentLotteries.length;
        _currentLotteries[idx] = newNth;
    }

    function lotteryIndex() public pure returns(uint) {
        return uint(msg.sender) % _currentLotteries.length;
    }
}
