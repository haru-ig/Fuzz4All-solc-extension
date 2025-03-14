pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback1 {
    mapping(address => bool) notSawFallback;
    bytes constant data = "foo";
    constructor() {}
    fallback() external payable {
        (bool succeeded, bytes memory returndata) = address(this).call{value: msg.value}(data);
        require(succeeded);
        notSawFallback[msg.sender] = true;
        assert(returndata == data);
    }
    function execute() external {
        if (!notSawFallback[msg.sender]) {
            selfdestruct(payable(msg.sender));
        }
    }
}
