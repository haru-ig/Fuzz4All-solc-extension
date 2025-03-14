pragma solidity ^0.8.0;
contract FallbackContract {
    fallback() external payable {
        uint _dummy;
        fallback();
    }
}
contract MutedCallContract {
    fallback() public payable {}
}

contract Test {
    function test() public {
        payable(address(0)).call.value(1 ether)();
        (uint _unused) = NoFallbackContract.fallback(address(0));
        (uint _unused) = MutedCallContract.fallback(address(0));
        FallbackContract c;
        uint _unused = c.fallback();
    }
}
