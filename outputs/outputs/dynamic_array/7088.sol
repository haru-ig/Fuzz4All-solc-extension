pragma solidity ^0.8.0;
contract Migrations {
    function migrate(address _target) public {
        Migrations migrationProxy = Migrations(_target);
    }
}
```
