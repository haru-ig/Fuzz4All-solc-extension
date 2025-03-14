pragma solidity ^0.8.0;
contract Caller {
    uint public value = 10;
    function fallback() public payable {
        x = 7;
    }
    receive() external payable {
        emit Success(value);
    }
}
enum Direction { Down, Left, Right, Up };
contract Map {
    function get(Direction direction) public pure returns (string memory) {
        if (direction == Direction.Down) {
            return "DOWN";
        } else if (direction == Direction.Up) {
            return "UP";
        } else if (direction == Direction.Left) {
            return "LEFT";
        } else if (direction == Direction.Right) {
            return "RIGHT";
        } else return "Error";
    }
}
