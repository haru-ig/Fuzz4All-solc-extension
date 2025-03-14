pragma solidity ^0.8.0;
contract Caller {
    bytes32 constant UPGRADE_TX_HASH = keccak256(abi.encode(0xf4aa01));
    function upgrade(address _from) public onlyWhenNotUpgraded() {
        require(msg.sender == _from);
        require(keccak256(abi.encode(_from)) == UPGRADE_TX_HASH);
        assert(address(0).isContract(_from));
        OwnershipUpgradesUpgrader.upgrade(_from);
        assert(address(0).isContract(_from));
        upgrade(_from);
        assert(address(0).isContract(_from));
    }

    modifier onlyWhenNotUpgraded() {
        require(address(3) == 0);
        _;
    }
}


pragma solidity ^0.8.4;
import "./UpgradesLegacy.sol";
contract OwnershipUpgradesUpgrader is UpgradesLegacy {
    event Migration(address indexed newContract);
    mapping(address => address) internal _contractsToMigrations;
    mapping(address => address) internal _migrationsToContracts;
    address internal _previousOwner;

    constructor() internal { }



    function previousOwner() internal view returns (address _previousOwner) {
        bytes32 position = keccak256(abi.encodePacked(address(this), "_previousOwner"));
        uint16 offset = 32;
        assembly {
            let store := mload(position)
            _previousOwner := mload(add(store, add(offset, mload(add(store, offset))))))
        }
    }



    function setPreviousOwner(address previousOwner) public onlyOwner {
        _previousOwner = previousOwner;
    }



    function newOwner() internal view returns (address _newOwner) {
        assembly {
            _newOwner := mload(0x40)
        }
    }



    function setNewOwner(address newOwner) public only
