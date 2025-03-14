pragma solidity ^0.8.0;
contract MutatedCaller3 {
    function mut_fallback() public {
        address addr = 0xe1001000000000000000000000000000010;
        (bool executed, bytes memory returnData) = addr.call{value: 0}("");
        assert(executed);
        assert(returnData.length == 0);
    }
    fallback() external payable {
    }
}
