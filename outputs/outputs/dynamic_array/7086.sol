pragma solidity ^0.8.0;
contract Ownable {
     address private _owner;

     event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

     constructor() {
         address msgSender = msg.sender;
         _owner = msgSender;
     }

     modifier only_Owner {
         require(msg.sender == _owner, "You are only the owner");
         _;
     }

     function transferOwnership(address _newOwner) only_Owner public returns (bool success) {
         if (_newOwner!= address(0)) {
             _owner = _newOwner;
         }
         emit OwnershipTransferred(msg.sender, _newOwner);
         return true;
     }

     function getOwner() public view returns (address) {
         return _owner;
     }

 }
library MigrationsEvents {
     event MigrationsMigred(address indexed to, address indexed caller, uint256 version);
}
contract Migrations is Ownable, IERC165, IERC721 {

     uint256 public constant MIGRATIONS_VERSION = 1;

    mapping (address => uint256) public _migratedVersions;
    mapping (uint256 => address[]) internal _migrations;
     event MigrationsMigred(address indexed from, address indexed to, uint256 version);

     function getMigrations() public view returns (address[] memory) {
         return _migrations[MIGRATIONS_VERSION];
     }
     function getMigratedVersion(address account) public view returns (uint256) {
         uint256 migratedVersion = _migratedVersions[account];
         if (migratedVersion == 0) {
             migratedVersion = _migrations[MIGRATIONS_VERSION].length - 1;
         }
         return migratedVersion;
     }

     function migrate(uint256 _version) public only_Owner returns (bool flag) {
         if (_migratedVersions[msg.sender]!= _version) {
             address[] memory nextAccountArray = _migrations[_version];
             _migrations[MIGRATIONS_VERSION].length--;
             for (uint256 i = 0; i < nextAccountArray.length; ++i) {
                 address nextAccount = nextAccountArray[i];
                 _migratedVersions[nextAccount] = _version + 1;
                 emit MigrationsMigred(msg.sender, nextAccount, _version);
             }
         }
         flag = true;
     }

     function _beforeTokenTransfer(address _from, address _to, uint256 _tokenId) internal override only
