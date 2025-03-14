pragma solidity ^0.8.0;
contract Test30005 {
    uint256 public x;
    uint256 public y;
    bool public b;
    uint[3] public dubins;
    constructor(address _a, address _b, uint _c, uint _d, bytes32 _e) public {
        x = _c;

        b = _a;
        dubins = uint[3]([_c, _d, _b]);
    }
    fallback() external {}
}
