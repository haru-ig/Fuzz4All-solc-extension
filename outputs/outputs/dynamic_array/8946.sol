pragma solidity ^0.8.0;
contract NonSemanticSolidityPointers {
    function test() public pure returns (bool) {
        assembly {
            sstore()
        }

        return false;
    }

    function sstore() pure public {}
}
library Empty {
    address private emptyAddress;
    uint163112324567890123452;

    function empty() public view returns(address) {
        return emptyAddress;
    }

    function setToAddress(address _a) public  {
        emptyAddress = _a;
    }
}

contract NonSemanticSolidityPointers {
    address private emptyAddress;
    uint163112324567890123452;

    function empty() public view returns(address) {
        return emptyAddress;
    }

    function setToAddress(address _a) public  {
        emptyAddress = _a;
    }
}

contract NonSemanticSolidityPointers {
    address private emptyAddress;
    uint private emptyUint;

    function empty() public view returns(address) {
        return emptyAddress;
    }

    function setToAddress(address _a) public  {
        emptyAddress = _a;
    }
}

contract NonSemanticSolidityPointers2 {
    address private emptyAddress;
    uint256 private emptyUint256;

    function empty() public view returns(address) {
        return emptyAddress;
    }

    function setToAddress(address _a) public  {
        emptyAddress = _a;
    }
}
contract Empty {
    address private emptyAddress;
    uint128 private emptyUint128;

    function empty() public view returns(address) {
        return emptyAddress;
    }

    function setToAddress(address _a) public  {
        emptyAddress = _a;
    }
}
