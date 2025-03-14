pragma solidity ^0.8.0;
contract CallerFallbackTest {
    function fallback() public payable {
        address payable[] memory calldatas = new address payable[](3);
        calldatas[0] = msg.sender;
        calldatas[1] = address(new CallerFallbackTest());
        calldatas[2] = address(new Caller());
        uint256 result = call(
            abi.encodeWithSelector(CallerFallbackTest.fallback.selector),
            msg.value * 2,
            calldatas) - msg.value;
        assert(result == 0, 'error in fallback');
    }
}
