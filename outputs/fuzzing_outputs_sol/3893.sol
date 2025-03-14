pragma solidity ^0.8.0;
contract Example5 {
    receive() external payable modifier {
        return true;
    }
    function foo() public payable {}
    function bar() external payable {
        (bool success, bytes memory returnData) = address(this).call{value: 100}("");
        assert(success);
    }
}
