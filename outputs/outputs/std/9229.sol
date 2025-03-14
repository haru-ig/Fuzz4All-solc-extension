pragma solidity ^0.8.0;
contract AddressBook {


    struct account {

        address account_number;
    }


    address payable owner;

    mapping(address => account) account_user;


    constructor() {
       owner = payable(msg.sender);
    }

    function add_account(address payable account_user_address) public {
        require(account_user_address!= address(0), 'account_add_address_null');
        account_user[account_user_address] = account({account_number: account_user_address});
        emit account_add_event(account_user_address, account({account_number: account_user_address})).ID);
    }

    function remove_account(address payable account_user_address) public {
        require(owner == msg.sender, 'account_add_address_null');
        account_user[account_user_address] = account({account_number: account_user_address});
    }


    function get_account(address payable account_user_address) public view returns (address) {
        return account_user[account_user_address].account_number;
    }

    event account_add_event(address payable _added_account, account _added_account_info);
}
