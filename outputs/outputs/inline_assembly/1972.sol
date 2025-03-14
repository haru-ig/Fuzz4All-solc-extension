pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 1;
    uint256 public constant x2 = 8;
    function z(uint _y) public returns(uint256) {
        uint a = 119;
        uint b = _y+x2;
        a = a*a+a+x;
        a = a+x2;
        a = a+x;
        b = a+x+x+x+12 + 8 + 2;
        return b;
    }
}





pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OldY {
    uint public x;
    uint public y;
    bytes32 public constant name = "OldY";

    constructor() {
        uint256 balance = address(this).balance;
        y = balance + 1;
        x = balance;
    }

    function setY(uint _y) public {
        y = _y - 1;
    }

    event YSet(uint _y);
    function getY() public view returns (uint) { return y; }

    function setX(uint _x) public onlyOwner {
        x = _x;
        emit YSet(_y = y + _x);
    }
}




pragma solidity ^0.8.0;
contract OldY2 {
    bytes32 public constant name = "OldY";

    uint public x;
    uint public y;
