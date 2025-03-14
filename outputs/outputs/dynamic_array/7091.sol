pragma solidity ^0.8.0;
contract Migrations {
    function migrate(uint256 _version) public {
        MigrateStorage(block.timestamp).migrate(_version);
    }

    struct MigrateStorage {
       int256 public version;
        constructor() public {
            version = 0;
        }
    }
}



contract AssignToConstant {
    uint256 constant constantValue = 1;
    address constant constantAddress = address(this);
}
