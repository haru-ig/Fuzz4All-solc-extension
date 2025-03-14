pragma solidity ^0.8.0;
contract Example13 is Example12 {
    function example13(uint256 x) public payable {}
}

contract Caller {
    uint256 public balance = 1 ether;
    function example14() public payable {}
    function example15() public payable {}
    function example16() public payable {}
    function example17() public payable {}
    function example18() public payable {}
    function example19() public payable {
        balance += 1 ether;
    }
    function () external payable{
        balance += 1 ether;
    }
}
