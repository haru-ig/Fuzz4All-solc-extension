pragma solidity ^0.8.0;
contract A {
    uint public constant alphabet = 27;
    uint public namelength;
    uint public names;
    address token_address;
    constructor(address token) {
        token_address = token;
    }
    function getTokens() public {

    }
    function withdraw(uint amount, address payable user_address) public {

    }
    event NewNameAddresses(uint new_names, uint new_name_length, uint old_length);
    function changeName(uint new_names, uint new_name_length) public {
        emit NewNameAddresses(new_names, new_name_length, namelength);
        names = new_names;
        namelength = new_name_length;
    }
}
