pragma solidity ^0.8.0;
contract {
    uint constant private EVAL_DELAY_MS = 0;
    address payable private _owner;
    address[] private _members;
    bytes32 public constant CREATOR = "creator";
    bytes32 public constant MINTER = "minter";

    address[] public owner_whitelist;
    mapping(address => bool) public whitelist_map;
    bool public owner_whitelist_set;
    uint[] public whitelist_last_update_block;
    uint public owner_whitelist_expiration_block;
    uint public owner_whitelist_count;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event WhitelistCountUpdated(bool added);
    event WhitelistUpdateBlocked(uint block_number);

    modifier onlyOwner() {
        require(msg.sender == _owner, "caller is not owner");
        _;
    }

    modifier onlyMiners() {
        require(whitelist_map[msg.sender], "must be a miner");
        _;
    }

    modifier onlyOwnerByWhitelisted() {
        require(owner_whitelist_set, "Owner whitelist is not set");
        require(_owner == msg.sender || whitelist_map[owner_whitelist[0]]);
        _;
    }


    constructor(address payable _owner_) {
        _owner = _owner_;
        owner_whitelist_set = false;
        owner_whitelist_expiration_block = EVAL_DELAY_MS;
    }

    function setOwner(address payable _newOwner) public onlyOwner {
        if (_owner == _newOwner) {
            return;
        }
        emit OwnershipTransferred(_owner, _newOwner);
        _owner = _newOwner;
    }

    function addOwnerToWhitelist(address _account) public {
        require(!owner_whitelist_set, "Owner whitelist has already been set");
        require(!whitelist_map[_account], "account already whitelisted");
        owner_whitelist_set = true;
        owner_whitelist[owner_whitelist_count] = _account;
        owner_whitelist_count += 1;
        if (owner_whitelist_count >= 3) {
            emit WhitelistCountUpdated(false);
            emit WhitelistUpdateBlocked(EVAL_DELAY_MS);
            owner_whitelist_count = 0;
        }
        emit WhitelistCountUpdated(true);
    }

    function removeOwnerFromWhitelist(address _account) public {
        require(owner_whitelist_set, "Owner whitelist is not set");
        require(_owner == _account || whitelist_map[_account], "account is not whitelisted");
        require(owner_whitelist_count >= 2, "At most 2 owners can be added to the whitelist");
        owner_whitelist_set = false;
        owner_whitelist_count -= 1;
        owner_whitelist[owner_whitelist_count] = 0;
        emit WhitelistCountUpdated(true);
        emit WhitelistCountUpdated(false);
    }
}

modifier whenNot
