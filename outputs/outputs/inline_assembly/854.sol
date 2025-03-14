pragma solidity ^0.8.0;
contract Mutator3 {
    uint256 a = 0;
    uint256 internal b ;
    mapping (address => uint) public balanceOf;
    uint internal constant incrementDelay = 9000;
    uint internal constant decrementDelay = 12000;
    constructor () public {
        b = 42;
        b = 3;
    }
    function transfer(address _recipient, uint256 _amount) public {
        balanceOf[msg.sender] += _amount;
        _recipient.transfer(_amount);
    }
    function countdown() public {
        ++count;
        a = 0;
        if (count == 8) {
            a = 42;
            a = 3;
        } else {
            a = 0;
        }
        if (count % incrementDelay == 0) {
            b = 42;
            b = 3;
        } else {
            b = 0;
        }
        if (count % decrementDelay == 0) {
            a = 42;
            a = 0;
        } else {
            a = 0;
        }
    }
 }
