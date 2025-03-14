pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutations6 {
    function checkEqual() public{
        uint256 a = 277;
        uint256 b = 277;
        address c = 0x11111111111111111111111122222222222222222;
        uint256 d = a - b;
        d = b + c;
        d = d + 2 *  b + (30 * c);
        d = d * (4-1* 3-2* 5* 1);
        d = d + ( b * (999+2));
        d = d - a % 2;
        d = (b + (d - (b - 1) % 5));
        d = (2 * a % 3 - d);
        require (b == d);
    }
}
