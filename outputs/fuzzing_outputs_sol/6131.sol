pragma solidity ^0.8.0;
contract G {
    address public admin;
    constructor() public {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can call");
        _;
    }

    function setAdmin(address _addr) public {
        admin = _addr;
    }
    function adminAddress() external view returns (address) {
        return admin;
    }

    function getAdminAddress() public {
        return admin;
    }
}
pragma solidity 0.8.6;
contract C4 {
    function runFallback(address _fallbackAddr, address _receiverAddr) public {
        (bool success, bytes memory returndata) = _fallbackAddr.call(
            abi.encodeWithSignature("receive(address,uint256)", _receiverAddr, 1)
        );
        require(success, "The fallback wasn't executed");
    }
}
contract Test is C4, G {
    function runSimpleFunction() public view {
        uint256 a = 5;
        require(getAdminAddress() == msg.sender, "Must be Admin");
        (bool success, bytes memory returndata) = admin.call{value: a, gas: 0xfff}("");
        require(success, "call failed");
    }
    function runComplexFunction(uint256 a) public view {
        (bool success, bytes memory returndata) = admin.call{value: a, gas: 0xfff}("");
        require(success, "call failed");
    }
    function runReceiveFunction(uint256 a) public {
        receive{value: a}(admin);
    }
    function getAddress() public view returns (address) {
        return getAdminAddress();
    }
}
