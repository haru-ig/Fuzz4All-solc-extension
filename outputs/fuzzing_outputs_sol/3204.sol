pragma solidity ^0.8.0;
contract Contract13Fail {
    function FallbackFunction() public pure {
    }
    function FallbackFunction2(bytes calldata calldataInput, uint256 arg) public pure {
        {Contract13Mutate m;}
    }
}

contract Contract14Mutate {
    function FallbackFunction() public pure {
    }
    function FallbackFunction2(bytes calldata calldataInput, uint256 arg) public pure {
        Contract13Fail m;
    }
}

contract Caller {

    address public contractAddress;
    address payable public contractPayableAddress;
    constructor(address c) {
        contractAddress = c;
    }

    function Test() public payable {
        require(fallbackFunctionIsPayable, "Falback function is not payable");

        bytes memory calldata calldataInput = abi.encodeWithSignature('fallbackFunction2(bytes[9], uint256)', "13", 32);
        uint256 arg = 13;

        (bool success, ) = contractAddress.call{value: msg.value}(calldata);
        require(success == true, "Failed to call fallback function");

        (success,, ) = contractAddress.call{value: msg.value}(calldataInput, arg);
        require(success == true, "Failed to call fallback function with bytes arg");

        (success,, ) = contractAddress.call{value: msg.value}(calldataInput, arg);
        require(success == true, "Failed to call fallback function with bytes arg (2)");

        (success,, ) = contractAddress.call{value: msg.value}(msg.data, arg);
        require(success == true, "Failed to call fallback function with data arg");
    }
    bytes private constant fallbackFunctionIsPayable = abi.encodeWithSignature('fallbackFunction()', );
}
