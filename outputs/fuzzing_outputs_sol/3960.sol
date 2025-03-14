pragma solidity ^0.8.0;
contract Example19 {
    function myFallback() internal pure {

    }
}

pragma solidity ^0.8.0;
contract Example19WithoutFallback {
    function myFallback() internal pure {}
}

pragma solidity ^0.8.0;
contract Example18 {
    receive() public pure payable {

    }
}

pragma solidity ^0.8.0;
contract Example18WithoutReceive {
    receive() public pure {}
}

pragma solidity ^0.8.0;
contract Example17 {
    modifier onlyCaller() {
        require(msg.sender == address(this), "Caller is not the contract's caller");
        _;
    }
}

pragma solidity ^0.8.0;
contract Example17Modifier {
    modifier onlyCaller() {
        require(msg.sender == address(this), "Caller is not the contract's caller");
        _;
    }

    function myMethod() public pure {
        emit CallerExample(msg.sender);
        emit CallerExample(msg.sender);
    }
}

pragma solidity ^0.8.0;
contract SolidityCallExample {
    constructor () {}

    function callMe(
        address first,
        address second) external {
        callMeWithOutput(first);
        callMeWithOutput(second);
        function callMeWithOutput(address receiver) internal {
            emit CallerExample(receiver);
            emit CallerExample(receiver);
            uint32 z = 1;
            (bool success, ) = receiver.call{value: 0}(abi.encodeWithSignature("fallback()"));
            require(success, "Fallback failed: ");
            emit FallbackExample(receiver);
            emit FallbackExample(receiver);
            ( uint32 _z, ) = receiver.call{value: abi.encodeWithSignature("return(uint32())")}(abi.encodeWithSignature("callMeWithFallback()"));
            uint32 v = _z;
            emit SuccessExample(receiver, v);
            emit SuccessExample(receiver, v);
        }
    }
}
