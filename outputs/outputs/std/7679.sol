pragma solidity ^0.8.0;
contract EquivalentGoodCase15 {
    uint8 private _myX;
    constructor(uint x)   public {
        _myX = x;
    }

    uint8 public getMyX() public view returns (uint8) {
        return _myX;
    }
}
