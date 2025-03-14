pragma solidity ^0.8.0;
contract C {
    receive() external {
    }
    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
    address private  _fallbackAddress;

    constructor() {
        _fallbackAddress = msg.sender;
    }

    receive() external payable {
        selfCall();
    }

    function selfCall() public {
        address payable receiver = address(this);
        (bool result, bytes memory data) = address(_fallbackAddress).call{value: 0.1 ether}(abi.encodeWithSignature("fallback()"));
        require(result, "Fallback failed");
        require(data.length == 0, "Fallback data must be empty");
        require(receiver.call{value: 0.1 ether}(abi.encodeWithSignature("throw()")), "Failed to throw");
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
    address private  _fallbackAddress;

    constructor() {
        _fallbackAddress = msg.sender;
    }

    receive() external payable {
    }

    function myFallback() public {
        address payable receiver = address(this);
        (bool result, bytes memory data) = address(_fallbackAddress).call{value: 0.1 ether}(abi.encodeWithSignature("fallback()"));
        require(result, "Fallback failed");
        require(data.length == 0, "Fallback data must be empty");
        require(receiver.call{value: 0.1 ether}(abi.encodeWithSignature("throw()")), "Failed to throw");
    }
}
