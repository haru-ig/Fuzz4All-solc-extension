pragma solidity ^0.8.0;
contract NoReturnCall {
    receive () payable {}

    function noReturnCallWithFallback() external {
        (bool r1, bytes memory data) = address(this).call{value: msg.value}(abi.encodeWithSignature("foo(uint8 x) public returns (uint)"));
        assert(r1);
        assert(data.length == 0);

        (bool r2, bytes memory data2) = address(this).call{value: msg.value}(abi.encodeWithSignature("foo(uint8 y) public returns (uint)"));
        assert(!r2);
        assert(data2.length > 0);

    }
}
