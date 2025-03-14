pragma solidity ^0.8.0;
contract EquivalentABIv08AbiMutatedInterface {
    function mintB (uint a) public { }
    function testEightDigits () public { }
}
contract SameABI {
    UsesNewFunctionality v;
    UsesOldFunctionality v;

    contract UsesNewFunctionality {
        function mintNewA () external {
        }
    }
    contract UsesOldFunctionality {
        function mintOldA (uint a) external {
        }
    }
}
contract EquivalentABI {

    contract UsesNewFunctionality {
        function mintAExternal () public {
        }
    }
    contract UsesOldFunctionality {
        function mintALocal (uint a) public {
        }
    }

    SameABI x;
    UsesNewFunctionality v;
    UsesOldFunctionality v;

    UsesNewFunctionality calldata x;
    UsesOldFunctionality calldata x;

    UsesNewFunctionality payable x;
    UsesOldFunctionality payable x;

    UsesNewFunctionality calldata x;
    UsesOldFunctionality calldata x;

    UsesNewFunctionality payable x;
    UsesOldFunctionality payable x;

    UsesNewFunctionality(address n) v{ v.mintA }
    UsesOldFunctionality(address n) v{ x.mintALocal(0) }

    UsesNewFunctionality(uint256 n) v(0);        v.mintAExternal();
    UsesOldFunctionality(uint256 n) v;                x.mintALocal(0);

}
