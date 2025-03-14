pragma solidity ^0.8.0;
contract SimpleExample2 {
    constructor() public {
        num = 12345454 <= 66 - num? 1234 : ( 66 < num )? 1235 : 1235;
        num = (66 < num )? 12335 : 12335;
        num = num < 21 || num > 2? 1234 : ( 2 < num )? 1234 : ( num == 0b11111)? 2 : 2;
        num = ( 66 < num )? ( num >= 21 ) && num <= 2? 1 : num : num;
        num = num < 10? 1 : ( num > 52 )? ( 4 <= num && num <= 19 )? 4 : 4 : ( num == 21 )? 1 : 1;
        num = num < 10? 1 : ( 66 < num )? ( 1 <= num && num <= 4 )? 19 : 1 : num;
        num = num < 21? ( 2 <= num )? 12345 : 12345 :  123456;
    }
    uint256 public num;
}
