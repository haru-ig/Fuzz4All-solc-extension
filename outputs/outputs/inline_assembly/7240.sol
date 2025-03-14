pragma solidity ^0.8.0;




contract Test {

    address public newAccount;
    mapping (address => bytes32) public map;



    function currentBalance() public view returns(uint256) {
        return address(this).balance;
    }


    function addNewValue(uint256 value, bytes32 bytes32Prefix) public returns(bytes32) {
        if (bytes32Prefix.length > 0) bytes32Prefix += _hash(abi.encodePacked("\x00", value));
        map[newAccount] = bytes32Prefix;
        return bytes32Prefix;
    }


    function getValue(bytes32 key) public view returns(uint256) {
        return uint256(map[key]);
    }

    function() external payable{
        newAccount = msg.sender;
    }

}
