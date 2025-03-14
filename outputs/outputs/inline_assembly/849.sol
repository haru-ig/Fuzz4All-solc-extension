pragma solidity ^0.8.0;
contract Mutator8 {
    uint256 internal a = 0;
    uint internal b ;
    uint256 internal constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    function stop() public {
        a = 42;
        a = 0;
    }
 }
