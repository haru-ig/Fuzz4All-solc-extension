pragma solidity ^0.8.0;
contract Example15 {
    function executeFunctionWithThrow(address target) public pure {
        address self = msg.sender;
        target.call{value: 10}(abi.encodeWithSignature(
            "doSomething(uint256)",
            self
        ));
    }
    function doSomething(uint256 x) public pure {
        require(x >= 6);
    }
}
