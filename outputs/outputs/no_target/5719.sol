pragma solidity ^0.8.0;
contract Baz {
    uint internal z = 12;
    receive() external payable {
        require(msg.sender == address(this));
        uint64 x = 2 ** 57;
        z = uint(x);
    }
}
contract Baz {
    uint160 public y = uint160(-1);
    receive() external payable {}
}
