pragma solidity ^0.8.0;
contract Bug14 {
    contract Migrations {
        function migrate(uint256 _version) public {
            _version = 2 * _version;
        }
    }
}
