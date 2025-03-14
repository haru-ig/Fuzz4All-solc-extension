pragma solidity ^0.8.0;
import "../../../../../contracts-upgradeable/access/OwnableUpgradeable.sol";
import "../../../../../contracts-upgradeable/upgradeable/OwnableUpgradeableUpgradeable.sol";
contract Caller is OwnableUpgradeableUpgradeable {
    function upgradeableCall(bytes memory _data) public onlyOwnable {

        assembly {
            switch returndata
            0 {

              reject(0, 0)
            }
            0 {

              returndatacopy(memaddress(0), returndatasize)
            }
          default {

              returndatacopy(memaddress(0), 0)
            }
        }

        ( assembly {
            switch returndata
            0 {

              reject(0, 0)
            }
            0 {

              returndatacopy(memaddress(0), returndatasize)
            }
          default {

              returndatacopy(memaddress(0), 0)
            }
        } );
    }
}
