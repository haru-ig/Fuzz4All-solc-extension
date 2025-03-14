pragma solidity ^0.8.0;
contract A {
    function A() public {}
    function a() public {
        ContractFallback cf;
        address myAddress = address(cf);
        (bool success, bytes memory result) = cf.call{value: 0}(abi.encodeWithSignature("a()"));
        if (!success) revert("FAIL_CALLER");
    }
}
