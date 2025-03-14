pragma solidity ^0.8.0;
contract Example4 {
    receive() external payable {
        uint256 x = 5 ;
        uint256 y = x + 1;
        y -= x;
        uint256 j = y + 1;
        j -= x;
        x += y;
        uint256 k = x + 1;
        k -= y;
        uint256 l = k + 1;
        l -= l;
        y += j;
    }
}
