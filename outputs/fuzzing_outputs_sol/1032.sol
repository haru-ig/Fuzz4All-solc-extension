pragma solidity ^0.8.0;
contract FallbackMutator {
    function fallback_receive() public pure {
        return FallbackMutator.fallback_receiveBytes(bytes([]));
    }

pragma solidity ^0.8.0;
interface FallbackMutator {
    bytes1 internal constant AYAD = "AYAD";
    function fallback_receiveBytes(bytes1 _bytes1);
 }
pragma solidity ^0.8.0;
contract FallbackMutator {
    function fallback_receiveBytes(bytes memory _bytes) private pure {
        return FallbackMutator.fallback_receiveBytes(_bytes);
    }
 }
