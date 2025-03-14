pragma solidity ^0.8.0;
contract EtherFallback {
    function test() public payable {
        return 1;
    }
    function test2() public payable {
        require(msg.data.length >= 10, "Data must be larger than 10");
    }
}
