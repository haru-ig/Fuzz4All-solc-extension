pragma solidity ^0.8.0;
contract EtherFallback0 {
    function test1() public returns (uint256) {
        return 1;
    }
    function test2() public payable returns (uint256) {
        require(msg.data.length >= 10, "Data must be larger than 10");
        return 2;
    }
}
