pragma solidity ^0.8.0;
contract Caller {
    fallback public () payable {

        address contractAddress = address(new New());
        bytes memory ABI = abi.encodeWithSignature("new(uint)");
        (bool success, bytes memory result) = contractAddress.call{value: msg.value}(ABI);
        require(success, "Fallback failed.");
        uint a = abi.decode(result, (uint));
        assert(a == 4*_msgSender());
    }
}
