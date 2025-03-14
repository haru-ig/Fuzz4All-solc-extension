pragma solidity ^0.8.0;
contract Caller {
    function callers() public pure returns(address) {
        return msg.sender;
    }
    function callWithNoFallback() public {
        require(msg.value == 0);
        if(msg.data.length > 0) assembly {revert(add(0, mload(add(0x4, returndata(0)))))}
    }
    function callWithNonZeroValue() public payable {}
    function callWithFallback(address _fallback) public {}
}
contract Mutater15 {
    uint public array;
    function() external payable {}
    function() internal {
        array++;
    }
    function fail() external {}
    function failWithFallback() external payable fallback {
        if(msg.value > 1 ether) revert();
    }
}
