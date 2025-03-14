pragma solidity ^0.8.0;
contract MovedSemanticsOneFallback {
    address x;
    function test() public {
        x.call{value: 1 ether}("");
    }
}
