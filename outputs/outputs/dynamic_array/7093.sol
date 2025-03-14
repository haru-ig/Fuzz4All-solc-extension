pragma solidity ^0.8.0;
contract Migrations {
    function upgradeTo(uint256 _version) public {
        require(_version < 2);
    }
}

pragma solidity ^0.8.0;
contract Migrations {
    function upgradeTo(uint256 _version) public sealed {}
}
