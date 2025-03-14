pragma solidity ^0.8.0;
contract Caller{
    function exampleCall() public returns (bytes memory) {
        bytes memory answer = abi.encode(new MutatedFallbackExample());
        return answer;
    }
}
