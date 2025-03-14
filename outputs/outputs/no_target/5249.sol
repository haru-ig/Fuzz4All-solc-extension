pragma solidity ^0.8.0;
contract SimpleExample {
    uint256 public num;
    constructor() public {
        num = (num == 0xFFFF)? 1 : 1;
        num = num > ( num == 0xFFFF)? 1 : ( num == 0xFFFF )? 1 : num;
        num = (num == 0xFFFF)? 1 : ( num!= num );
        num = num + num + num;
        num = (num + num >= 2 * num)? 1 : num + num + num;
        num = (num * (num > num)? 1 : num + num + num);
        num = (num + num == num);
        num = num >= num + num? 1 : num + num + num;
    }
}
