pragma solidity ^0.8.0;
contract Array_view_with_new{
    function get32(uint y) public view returns(uint){
         y = y + 8;
         return y;
    }
}

pragma solidity ^0.8.0;
contract Array_view_with_new{
    uint256 constant WATCH_INTERVAL_IN_SECONDS = 3;
    uint256 constant RANDOM_RANGE = 42;

    uint256[10000] private _x;
    uint8[20] private _count;

    constructor(uint8[20] memory count) {
        require(count.length < 256, "invalid length");
        _setCount(count);
        _x = uint256[10000](1);
    }

    function setRandom(uint y) public {
        _x[y / WATCH_INTERVAL_IN_SECONDS] = y % RANDOM_RANGE;
    }

    function increase(uint256 idx) public {
        _x[_count[idx / 8]] += 0xFF + 1;
        _count[idx / 8] += 0xFF + 1;
    }

    function _setCount(uint8[20] memory count) private view {
        for(uint i = 0 ; i < count.length ; i++) {
            _count[i] = count[i];
        }
    }

    function getSum() public view returns (uint){
        uint sum;
        for(uint i = 0 ; i <= 15 ; i++) {
            sum = sum + (uint(_x[i / WATCH_INTERVAL_IN_SECONDS]) >> (i % WATCH_INTERVAL_IN_SECONDS * RANDOM_RANGE % WATCH_INTERVAL_IN_SECONDS) & 1);
        }
        return sum;
    }
}
