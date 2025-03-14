pragma solidity ^0.8.0;
contract CallerExample {
    uint256 val;
    function Call(uint256 amount) public payable {
        uint256 r = amount + 13;
        val = r;
    }
}
