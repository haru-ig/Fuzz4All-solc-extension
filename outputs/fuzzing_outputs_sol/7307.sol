pragma solidity ^0.8.0;
import "./LowLevelContract.sol";
contract MutatedFallbackContract {
    function test(uint amount, address to, bytes memory data) external pure {
        bytes memory inputArguments = abi.encodeWithSignature("doLowLevelCall(uint256,address,bytes)", amount, to, data);
        address contractAddress = address(this);
        LowLevelContract lowLevelContract = LowLevelContract(contractAddress);
        lowLevelContract.doLowLevelCall.value(amount)(to, inputArguments);
    }
}
