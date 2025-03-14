pragma solidity ^0.8.0;
contract Example9 {
    fallback function() public payable {}
    function add(uint x, uint y) public pure returns (uint) {
        x += 1;
        _;
    }
}
