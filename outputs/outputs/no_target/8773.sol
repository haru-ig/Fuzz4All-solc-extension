pragma solidity ^0.8.0;
interface EquivalentInterface {
    function setDecimals(uint256) external;
    function mintA() external;
    function mintB() external;
    function mintC() external;
}

contract EquivalentABIv08AbiSemanticallyEquivalentInterfaceAndFunction {
    function mintA() public { }
}
contract EquivalentABIv06AbiSemanticallyEquivalentInterfaceAndFunction {
    function publicMintA() public {
    }
}
contract EquivalentABIv04AbiSemanticallyEquivalentInterface {
    function mintA() public {
    }
}
contract EquivalentABIv02AbiSemanticallyEquivalentInterfaceOld {
    function mintA() public {
    }
}
contract EquivalentABIv01AbiSemanticallyEquivalentInterfaceOld {
    struct S {}
    function mintA() public returns (S) {
    }
}
contract EquivalentABIv00SameSignature {
    function publicMintA() public {
    }
    function publicMintB() public {
    }
    function publicMintC() public {
    }
}
contract EquivalentABIv03 {
    function publicMintA() public {
    }
    function publicMintB() public {
    }
    function publicMintC() public {
    }
}
contract EquivalentABIv4Old {
    function publicMintOld(uint256 x) public { }
}
contract EquivalentABIv07 {
    function publicMintA() public {
    }
    function publicMintA() public {
    }
}
interface EquivalentInterface2 {
    function publicMintA() public {
    }
}
contract EquivalentInterface2Old {
    function publicMintA() public { }
}
contract EquivalentInterface3Old {
    function publicMintA() public { }
    function publicMintA() public { }
}
contract EquivalentInterface4AndFunction {
    function publicMintA() public {
    }
    function publicMintB(uint) public {
    }
    function publicMintC(uint) public {
    }
}
contract EquivalentABIv05Old {
    function publicMintA() public {
    }
    function publicMintB() public { }
    function publicMintC() public { }
}
contract EquivalentABIv05Old {
    function publicMintA() public { }
    function publicMintB() public { }
    function publicMintC() public { }
}
contract EquivalentABIv5 {
    function publicMintA(S) public { }
}
contract EquivalentAbiv5 {
    function internalMintA(S) internal { }
}
contract EquivalentABIv11 {
    function publicMintA(S, bytes32) public { }
}
contract EquivalentABIv12 {
    function publicMintA(uint256, bytes32) public { }
}
contract EquivalentInterface5 {
    function publicMintA(uint256) public { }
    function publicMintB(
