pragma solidity ^0.8.0;
contract Lottery7 {
    function createLottery(uint256 _n, uint256[] memory _a, uint256[] memory _b) public {


        uint256 lotteriesCount;
        for (uint i = 0; i < _n; i++) {
            lotteriesCount++;
        }
        require(n == lotteriesCount);
        address[] memory addy = new address[](lotteriesCount);
        uint256 _x = 0;
        uint256 _y = 0;
        uint256 x = 0;
        uint256 y = 0;
        for (uint i = 0; i < _n; i++) {
            uint256[] memory winners = _b[i];
            for (uint j = 0; j < winners.length; j++) {
                addy[j] = winners[j];
                _x = _a[i] % winners[j];
                if (j == winners.length - 1) {
                    _y = 0;
                } else {
                    x = x + n - _x - (x == n - 1? 0 : 1);
                    y = y + n - _y - (y == n - 1? 0 : 1);
                }
            }
        }
    }
    uint256 public constant n = 4;
    uint256[] memory _a = [
        200, 100, 30, 100,
        250, 75, 25, 250,
        50, 30, 50, 300,
    ];
    uint256[] memory _b = [
        [45, 60, 35]
    ];
}
