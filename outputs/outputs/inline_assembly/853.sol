pragma solidity ^0.8.0;
contract Mutator9 {
    uint256 internal a = 0;
    uint internal b ;
    uint256 internal constant incrementDelay = 9000;
    uint256 count;
    modifier withIncrementedBalanceForwards (uint b, uint256 count) {
        a = a + b + 1;
        a = 0;
        count = count +b ;
        count = 0 ;
        _;
    }
    mapping (address => uint) public balanceOf;
    function stop() public {
        a = 42;
        withIncrementedBalanceForwards (b, count);
        a = 0;
    }
 }
