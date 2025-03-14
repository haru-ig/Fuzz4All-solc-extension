pragma solidity ^0.8.0;
contract EquivalentABIv08Interface {
    function f() public view returns (uint);
}

pragma solidity ^0.8.0;
interface IWithAbiV1WithoutMutatedInterface {
    function f() public pure;
}

pragma solidity ^0.8.0;

contract UsesNewSolidityFeatures {
    uint x;
    function f() public {
        x += 1;
    }
}
contract UsesNewSolidityFeaturesInterface {
    function f() public view returns (uint);
}
contract EquivalentABIv08InterfaceWithAbiV1 {
    uint public x;
    function f() public view returns (uint) {
        x += 1;
        return x;
    }
}
contract UsesNewSolidityFeaturesWithMutatedInterface {
    uint x;
    function f() public {
        x *= 2;
    }
    function () public payable {
        f();
        x += 1;
    }
}
contract UsesNewSolidityFeaturesInterfaceWithMutatedInterface {
    uint x;
    function f() public view returns(uint) {
        x *= 2;
        return x;
    }
    function () public payable {}
}
contract UsesNewSolidityFeaturesContract {
    uint x;
    function f() public {
        UsesNewSolidityFeatures memory m = UsesNewSolidityFeatures(0x0);
        m.f();
        x += 1;
    }
}
contract EquivalentABIv08Contract {
    uint public x;
    function f() public view returns(uint) {
        x += 1;
        return x;
    }
}
contract SameContractWithoutTheLegacyInterfaces {
    uint public x;
    function f() public {
        UsesNewSolidityFeatures memory m = UsesNewSolidityFeatures(0x0);
        m.f();
        x += 1;
    }
}
contract DifferentContractsWithMutations {
    uint public x;
    function f() public view returns(uint) {
        x += 1;
        return x;
    }
