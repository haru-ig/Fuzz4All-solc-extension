pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    address payable public constant x = payable(msg.sender);
    function setX(uint) public {
        uint a = getX();
        setX(_x);
        require(address(this) == x, "Not the message sender");
        getX();
    }
    function getX() public returns (uint) {
        uint c = uint(x);
        return c;
    }
}
