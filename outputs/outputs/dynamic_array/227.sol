pragma solidity ^0.8.0;
contract C7 {
    constructor(uint256 x) public {
        require(x > 0);
        assembly {
            mstore(0, x)
        }
    }
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        require(a + b > 0);
        return a + b;
    }
    function mutate() public {
        emit ChangeSize(msg.sender);
    }
    event ChangeSize(address addr);
}
