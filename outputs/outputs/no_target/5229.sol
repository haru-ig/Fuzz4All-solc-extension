pragma solidity ^0.8.0;
contract SimpleExample19 {
    constructor() public {
        num = 1 < 2 * 3? 1 : ( num == 0xFFFF? 1 : num );
        num = (num == 0xFFFF)? 1 : ( 1 > num)? ( 2 < num )? 1 : 1 : num;
        num = num <= 19 && num >= 2? 1 : 2;
    }
    uint256 public num = uint256(uint160(0x266d));
}
