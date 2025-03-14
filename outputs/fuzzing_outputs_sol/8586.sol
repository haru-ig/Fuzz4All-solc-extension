pragma solidity ^0.8.0;
contract CallerExample22 {
    uint[] public map_data_data;
    mapping (bytes32 => uint) public map_data;
    mapping(address => uint) private balance_of;
    address[] private user_address_data;
    mapping(uint => uint) public user_address;
    function fallback() public payable{
        if (msg.value > 1 ether){
            throw(10);
        }
        require(balance_of[msg.sender] + msg.value >= 1 ether &&!(msg.sender == uint160(0)), "Wrong values");
        map_data_data.push(uint(msg.value));
        map_data[keccak256(abi.encodePacked(map_data_data.length))] = uint(msg.value);
    }
}
