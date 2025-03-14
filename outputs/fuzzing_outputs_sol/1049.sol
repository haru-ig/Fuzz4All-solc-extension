pragma solidity ^0.8.0;
contract FailToImplementFallback {
    constructor() {}
    function test() public {
        ContractFallback c;
        (bool ok,) = c.fallbocek(bytes4(keccak256("fallback()")));
        require(ok);
    }
}
contract ContractFallbackInterface {
    receive() external payable {
        ContractFallback c;
        (bool ok, bytes memory data) = c.fallbocek(bytes4(keccak256("fallback()")));
        require(ok);
        bytes memory a = data;
    }
}
