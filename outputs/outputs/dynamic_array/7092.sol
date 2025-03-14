pragma solidity ^0.8.0;
contract Migrations {
    function migrate(uint256 _version) public {
        require(_version > 1);
    }
}
