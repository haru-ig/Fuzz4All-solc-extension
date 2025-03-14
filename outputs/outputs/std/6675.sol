pragma solidity ^0.8.0;
contract Mutate77 {
    struct AddressAndState {
        address payable add;
        uint256 x;
    }
    AddressAndState[] private myArr;
    modifier addx() {
        myArr.push(AddressAndState(msg.sender, x_));
        _;
    }
    constructor() public {
        myArr.push(AddressAndState(msg.sender, 3));
    }
    function increase() public addx() {
        x_++;
    }
    function setX(uint value) public addx() {
        x_ = value;
    }
    function getX() public view returns ( uint ) {
        return x_;
    }
    function getMax() public view isMax() returns ( uint ) {
        return myArr[0].x;
    }
    function isMax() public pure returns ( bool ) {
        bool isMax = (myArr[0].x > myArr[1].x && myArr[0].x > myArr[2].x);
        if (isMax) {
            return isMax;
        }
        return false;
    }
    function decrease() public addx() {
        x_--;
    }
}
