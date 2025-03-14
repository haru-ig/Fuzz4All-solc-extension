pragma solidity ^0.8.0;
interface IReceiveWithFallback {
    function receiveMessage(uint256 _value) external payable;
}
contract ReceiveWithFallback {
    uint256 public etherBalance;
    receive() external payable {
        etherBalance += msg.value;
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint256 public etherBalance;
    IReceiveWithFallback public fallback;
    constructor (address _fallback) {
        fallback = IReceiveWithFallback(_fallback);
    }
    function getAddressToFallback() public pure returns (address) {
        return fallback;
    }
    receive() external payable {
        etherBalance += msg.value;
    }
}


pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract OwnableUpgradeabilityProxy is Ownable {
    address public proxyAdmin;

    constructor() {}

    modifier onlyProxyAdmin {
        require(
            msg.sender == proxyAdmin,
            "ProxyAdmin can only be called by the proxy admin"
        );
        _;
    }

    function setProxyAdmin(address _proxyAdmin) public onlyProxyAdmin {
        proxyAdmin = _proxyAdmin;
    }



    function upgradeToAdmin(
        address _proxyAdmin,
        address _proxy
    ) public onlyProxyAdmin {
        require(
            _proxyAdmin!= address(0),
            "Proxy can not be assigned to the 0 address"
        );
        address originalProxyAdmin = proxyAdmin;
        address newProxyAdmin = _proxyAdmin;
        IUpgradable _proxyUpgradable;
        assembly {
            _proxyUpgradable := mload(0x43)
        }
        _proxyUpgradable.setProxyAdmin(newProxyAdmin);
        emit ProxyAdminChanged(
            originalProxyAdmin,
            newProxyAdmin,
            _proxy
        );
    }
}



pragma solidity ^0.8.0;

interface IUpgradable {
    function setProxyAdmin(address _proxyAdmin) external;
}



struct Factory {
    mapping(address => address) public contractAddressById;
    uint256 public nextId;
}

abstract contract ContractFactoryUpgradeable is Factory {
    bytes32 public constant CREATOR_ROLE =
        keccak256
