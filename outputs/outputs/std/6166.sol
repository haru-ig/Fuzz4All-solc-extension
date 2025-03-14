pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent11 {
    function generateContract(bytes memory a) public pure returns (address b) {
        assembly {
            a := add(a, 0x3b41A6797C46BC5dEb956E56CA7427ae72a440)
        }
        return address(a);
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent12 {
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent13 {
    function generateContract(bytes memory a) public pure returns (address) {
        return address(a);
        assembly { x := 0x01 }
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent14 {
    function checkAddress(address x) internal pure returns (address y) {
        y := x;
        assembly { x := 0x01 }
    }
    address public contractAddress;
    function updateContractAddress(address contractAddress_) internal {
        contractAddress = contractAddress_;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyNotEquivalent15 {
    function checkAddress(address x) internal pure returns (address y) {
        y := x;
        assembly { x := 0x01 }
    }
    uint256 public amount = 1;
    uint256 x = 2;
}
pragma solidity ^0.8.0;
import "./Check.sol";
contract SemanticallyNotEquivalent16 is Check {
    function checkAddress(address x) internal pure returns (address y) {
        y := x;
        assembly { x := 0x01 }
    }
}
pragma solidity ^0.8.0;
import "./Check.sol";
contract SemanticallyNotEquivalent17 is Check {
    function checkAddress(address x) internal pure returns (address y) {
        uint8 z = 3;
        z = _z();
        z = z();
        z -= 1;
        z = z() - 1;
        z = z() / 2;
        z = z() - 1;
        z = z() / 2;
        z = z() - 1;
        z = z() / 2;
        z = z() - 1;
        z = z / 2;
        z = z() - 1;
        z = z() / 2;
    }
}
pragma solidity ^0
