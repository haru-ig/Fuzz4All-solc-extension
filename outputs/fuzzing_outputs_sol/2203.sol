pragma solidity ^0.8.0;
contract Mutater120 {
    uint128 private immutable _x;
    constructor(uint128 _x) {
        _x;
    }
    function div(uint128 x, uint128 y) public view returns (uint128) {
        if (y > 1 && x / y == 0) return 0;
        uint128 z = (x + (y >> 1)) / y;
        uint128 xd = (x + (y + 1) >> 1) / y;
        if (y >= 1) {
            if ((y & 1) == 1) return xd;
            return z;
        }
        return xd - z * 2;
    }
}
contract Simple {
    address public receiver;
    constructor() {
        receiver;
    }
    receive() external payable {}
    function withdraw() public {
        uint(address(this).balance).transferFrom(msg.sender, address(this), uint(-1));
    }
}
