pragma solidity ^0.8.0;
interface IModdedDelegate {
    function getMod() external view returns (uint256);
    function setMod(uint256 newMod) external;
}
interface IModdedDelegate2 {
    function getMod2() external view returns (uint256);
    function setMod2(uint256 newMod) external;
}

contract ContractWithFallbackExample {
    IModdedDelegate2 moddedDelegate;

    constructor(address _newModdedContractAddress) {
        moddedDelegate = IModdedDelegate2(_newModdedContractAddress);
    }

    function callModdedDelegateWithFallback(bytes memory data) public {
        moddedDelegate.setMod2(moddedDelegate.getMod2() + 1000);
    }

    constructor(address _newModdedContractAddress) public {
        moddedDelegate = IModdedDelegate2(_newModdedContractAddress);
    }

    constructor() public {
        moddedDelegate = IModdedDelegate2(msg.sender);
    }

    event ModdedDelegateUpdate(uint256 newMod);
    uint256 public immutable newMod = 0;

    function setMod(uint256 newMod) public {
        moddedDelegate.setMod2(newMod);
        newMod = newMod + 1000;
        emit ModdedDelegateUpdate(newMod);
    }
}


pragma solidity >=0.4.22 <0.9.0;

import "@openzeppelin/contracts/utils/Address.sol";

contract AccessControlMock {
    using Address for address payable;

    address owner;
    mapping(address => bool) private _isAdmin;

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Accessing to the only owner contract. All functions are read-write."
        );
        _;
    }

    modifier onlyAdminOrOwner() {
        require(
            _isAdmin[msg.sender] || msg.sender == owner,
            "Accessing to the super admin or owner contract. All functions are read-write."
        );
        _;
    }

    constructor() {
        owner = msg.sender;
        _isAdmin[owner] = true;
    }

    function isAdmin(address addr) public view returns (bool) {
        return _isAdmin[addr];
    }


    function addAdmin(address addr) public onlyAdmin
