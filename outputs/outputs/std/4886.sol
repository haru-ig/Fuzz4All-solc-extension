pragma solidity ^0.8.0;
contract MutateWithStruct {
    address _manager;
    address _newManager;
    mapping (address => uint) _managers;
    mapping (uint => uint) private _managersToSet;
    mapping(uint => uint) private _numToSet;
    constructor() {
        _managers[0x91C27968cB04A2C0e2B937eA9D16042EDF09057C] = 200;
        _managers[0xCdcE00f6B6Cd4C43929852962C71857f6A7D8517] = 300;
        _managersToSet[2] = 400;

        _managers[0x91C27968cB04A2C0e2B937eA9D16042EDF09057C] = 600;
        _newManager = 0xCdcE00f6B6Cd4C43929852962C71857f6A7D8517;
        _managers[0xCdcE00f6B6Cd4C43929852962C71857f6A7D8517] = 800;
    }
    modifier onlyManager() {
        require(msg.sender == _manager, 'This function is only a manager');
        _;
    }
    function setManagers() public {
        _managersToSet[1] = 400;
        _managersToSet[2] = 200;
        _managersToSet[4] = 500;
        _managersToSet[5] = 300;
        _managers[0x91C27968cB04A2C0e2B937eA9D16042EDF09057C] = 200;
        _managers[0xCdcE00f6B6Cd4C43929852962C71857f6A7D8517] = 300;
    }
}
