pragma solidity ^0.8.0;
address private _owner;
mapping(address => mapping(address => uint256)) public _allowances;
address private _configAddress;

struct Configuration {



    address baseAddresses[6];


    uint public numberOfBaseAddresses;




    address[] public baseAddresses2;


    uint public numberOfBaseAddresses2;
}

contract MultiContractExample {
    IERC2612 public config;

    function initializeContracts(address c1, address c2) public {
        config = IERC2612(c1);
    }

    function getAllowance() public view returns (uint256 allowance) {
        require(address(config)!== Address.zero, "Config address not initialized");
        allowance = _allowances[_configAddress][msg.sender];
    }

    function approve(address _spender, uint256 _value) external {
        require(address(config)!== Address.zero, "Config address not initialized");
        uint oldValue = _allowances[_configAddress][msg.sender];
        config._approve(msg.sender, _spender, _value);
        uint newValue = _allowances[_configAddress][msg.sender];
        require(newValue == oldValue + _value);
    }
}
