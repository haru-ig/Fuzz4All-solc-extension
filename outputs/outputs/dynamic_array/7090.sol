pragma solidity ^0.8.0;
contract Bots {
    function destroyAll() public {
        assembly {
            mstore(0x40, mload(0x40))
        }
    }
}

pragma solidity ^0.8.0;
contract Tier3Bot {
    function attack(address _contracts) public {
        Bots(_contracts).destroyAll();
    }
}

pragma solidity ^0.8.0;
contract Tier3Bot {
    function attack(_contracts) public {
        (bool success, bytes memory data) = address(_contracts).call{gas: 1000000}(abi.encodeWithSignature("destroyAll()"));
        assert(success);
    }
}

pragma solidity ^0.8.0;
contract Tier3Bot {
    constructor() public { }
    function attack() public {
        string memory code = "function attack() payable {}";
        bytes memory recompiled = compiler.compileSolidity(code);
        bytes memory encoded = abi.encodeWithSignature("attack()");
    }
}
