pragma solidity ^0.8.0;
contract MutatedCaller {
    uint256[3] [2] _arrs;
    uint256 _a = 1;
    uint256 _b = 2;
    constructor() {
        _arrs[1][2] = _b;
        _a = 1;
    }

    function mut() public {
        _arrs[1][2]++;
    }

    function call(uint256 _id) public {
        uint256 _value = _arrs[_id][0];
        require(_value!= 0, '5');
        uint256 _idx = _id == 1? 2 : 1;
        _arrs[_idx][_id == 1? 0 : (_id == 2? 1 : 2)]++;
    }
}
