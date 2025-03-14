pragma solidity ^0.8.0;
contract MutateBc1 {
    uint _rBc1 = 18;
    uint _rBc2 = 18;
    constructor() public {
        _rBc1;
        for (uint x; x < 20000; x++) {
            _rBc1 +=x;
            if (_rBc2 == 0) {
                break;
            }
        }
    }
}
