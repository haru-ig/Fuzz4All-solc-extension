pragma solidity ^0.8.0;
contract B {
    contract C {
        modifier access_only {
            require(msg.value == 0, "Ether in send");
            _;
        }
    }
    function setFallbackFunction(address functionAddr) public {
        _setFallbackFunction(functionAddr);
    }
    function _setFallbackFunction(address functionAddr) internal {
        require(
            functionAddr!= address(0),
            "Fallback cannot be set to a function address of 0x0"
        );
    }
    function fallback() external access_only returns (uint) {
        return 0x20;
    }
}
contract Test is B, B.Caller {
    constructor(address _admin) {
        setAdmin(_admin);
    }
}
