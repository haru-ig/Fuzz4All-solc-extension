pragma solidity ^0.8.0;
contract MutateBc2 {
    uint _rBc2 = 18;
    constructor() public {
        {
            _rBc2 += 53;
        }
        _rBc2;
    }
}
