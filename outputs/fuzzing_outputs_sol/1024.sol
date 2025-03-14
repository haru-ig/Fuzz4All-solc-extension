pragma solidity ^0.8.0;
contract FallbackMutator {
    function _fallback_receive() public pure returns (uint) {
        bytes memory _bytes = "Hello, world!";
        bytes memory new_bytes = "Goodbye!";
        bytes memory _bytes1 = "Hello, world!";
        fallback_receive(_dummy,_bytes,_bytes1);
        return _dummy;
    }
    function fallback_receive(uint _dummy, bytes memory _bytes, bytes memory _bytes1) private pure {}
 }

pragma solidity ^0.8.0;
contract FallbackMutator {
    struct HelloWorld {
        string message;
    }
    function _fallback_receive() public pure returns (uint) {
        HelloWorld memory _helloWorld = HelloWorld({message: "Hello, world!"});
        return _fallback_receive(_dummy,_helloWorld);
    }
    function fallback_receive(uint _dummy, HelloWorld memory _helloWorld) private pure {}
 }

contract CallCaller {
    address public callee = address(FallbackMutator());
    fallback_receive call();
    function call() public returns (uint) {
        uint result = FallbackMutator()._fallback_receive();
        return result;
    }
 }

contract Fallback {
    function _fallback_receive() public pure returns (uint256){return 1;};
    fallback_receive fallback;
}
