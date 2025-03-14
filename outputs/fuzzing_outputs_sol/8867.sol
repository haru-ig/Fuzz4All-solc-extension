pragma solidity ^0.8.0;
contract CallerAndFallbackTest {
    address public test;
    function callContract() public payable {
        (bool success, bytes memory returnData) = test.call{value: address(this).balance}("");
        require(success, "Failed to call fallback");
        assertEq(returnData, '0x' '');
    }
}
