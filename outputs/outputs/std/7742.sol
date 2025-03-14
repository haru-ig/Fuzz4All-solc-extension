pragma solidity ^0.8.0;
contract EquivalentNew {
    mapping(address => uint256[] memory) public x;
}
contract Memory {
    uint8 public a;

    function setA() public {
        a = 1;
    }
}
contract EquivalentNew {
    struct MappedMemory {
        uint8 b;
    }

    function getAA() public pure returns (uint8) {
        return a;
    }

    function setAB() public {
        a = 1;
        a = 5;
    }
}
pragma solidity ^0.8.0;
contract NoNew {
    function a() public {
        uint256 r;
        assembly {
            r := sload(0x43008)
        }
        a = r;
    }
}
