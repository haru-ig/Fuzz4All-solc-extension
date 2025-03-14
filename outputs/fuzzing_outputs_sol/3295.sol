pragma solidity ^0.8.0;
contract SomeContract {
    uint public x;
    address payable y;
    constructor(address _y) {
        y = _y;
        x = 1;
    }
    function simpleContract() public payable {
        x += 2;
        y.transfer(address(this).balance);
    }
    function lowLevel() public {
        x += 5;
    }
    function highLevel() public {
        x += 6;
        y.transfer(address(this).balance);
    }
}
