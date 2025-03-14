pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentSolidity57_dynamic_66 {
    function set_4384468866() public {
        bytes memory oldData = hex"73656372657461626c65";
        bytes memory newData = hex"73656372657461626c65";
        bytes32 oldHash = keccak256(oldData);
        bytes32 newHash = keccak256(newData);
        require(oldHash < newHash);
        m[4384468866][0x734543527461626c65] = false;
        m[4384468866][0x734543527461626c65] = 0x734543527461626c65;
        mChanged(oldData, newData);
        m[4384468866][0x734543527461626c65] = null;
    }
}
