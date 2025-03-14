pragma solidity ^0.8.0;
contract Example {
    receive() external payable {}
    fallback () external payable {}
}
contract Caller {
    function doCall(bytes calldata callData) external {
        (bool success, ) = address(Example4).call(callData);
        require(success);
    }
}
