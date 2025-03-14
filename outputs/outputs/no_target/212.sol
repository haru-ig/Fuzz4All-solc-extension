pragma solidity ^0.8.0;
import "./IFactory.sol";
contract Factory {
    function createContract(address owner) public {
        IFactory factory = IFactory(owner);
        address contractAddress = factory.createContract(owner);
    }
}
```

# 21.02

```
*/ Warning: Contract 0xdb349a9b-a14a-4162-ab24-e9a159b4440c does not comply with the UpgradeableAdminUpgradeable pragma because the pragma's version does not match with the contract's version. The pragma's version does not match with the contract's version.
* Please fix the contract to comply with the latest pragma version.
* The pragma currently allows users to specify the pragma version.
* It is recommended that users switch to using the explicit pragma version.

*/


pragma solidity ^0.7.3;
contract UpgradeableAdminUpgradeable is ContextUpgradeSafe, UpgradableAdminUpgradeable {



    constructor() ContextUpgradeSafe(0) {
        __Context_init_unchained();
        _registerDefaultAdminRole(DEFAULT_ADMIN_ROLE);
    }


    modifier version(uint8 version_) {
        require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "Version: Sender does not have the Admin role");
        require(checkAdminUpgradeability(_msgSender(), _getAdminVersion()));
        _;
    }

    modifier checkAdminUpgradeability(address _newVersion, bytes memory _currentAdminVersion) {
        require(keccak256(_newVersion) < keccak256(_currentAdminVersion), "Version: New version is less recent");
