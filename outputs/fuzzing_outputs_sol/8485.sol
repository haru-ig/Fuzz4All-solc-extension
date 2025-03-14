pragma solidity ^0.8.0;
contract CallerExample {
    function add(uint x) public pure returns (uint) {
        return CallerExample5.add(x);
    }

    receive() external payable {}
}
