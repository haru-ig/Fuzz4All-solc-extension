pragma solidity ^0.8.0;
contract D {

    bytes4 constant D_TYPEHASH = type(D).hash;
    mapping(address => address[]) public friends;
    bytes32 constant EMPTY_ADDRESS_BYTES32 = hex"00000000000000000000000000000000000000000";
    bytes32 constant WORLD_BYTES32 = hex"c02aaA39b223fe8d0A0e5C4F27eAD9083C756Cc2";

    struct Friend
    {
        address address;
        bool status;
    }

    struct Friendlist
    {
        mapping (address => Friend) friends;
        bool isInitialized;
    }

    struct Userlist
    {
        mapping (address => uint) users;
    }



    function addFriend(address addr) public {
        friends[addr].push(Friend({address:addr}));
    }

    function addFriendList() public {
        Friendlist storage fl = Friendlist(msg.sender);

        if (!fl.isInitialized) {

            for (uint i=0; i<= 200; i++) {

                bytes32 ip = uintToBytes32(i);
                address friendAddr = addressFromBytes32(ip);
                friendAddr = msg.sender;
                fl.friends[friendAddr] = Friend({address:friendAddr, status:false});
            }

            fl.isInitialized = true;
        }
    }

    function userList() public returns (Userlist memory){
        Userlist memory u = Userlist({users: getAddressList()});
        return u;
    }

    function getAddressList() public returns(uint[] memory) {
        address[] memory result = new address[](200);
        uint i = 0;
        uint length = friends.length;
        while(i<length){
            if(friends[i][1] == true) {
                result[i] = friends[i][0];
            }

            i++;
        }
        return result;
    }

    function uintToBytes32(uint value) public pure  returns (bytes32  ){
        return bytes32(uint(value));
    }

    function addressFromBytes32(bytes32  ip) public pure returns (address) {
        return address(uint(ip));
    }

    function getFriend(address addr0) public view returns (address, bool) {
        uint addrLength = uint(keccak256(abi.encodePacked(addr0)));
        bytes32 addrBytes32 = uintToBytes32(addrLength);
        uint addr = uint8(uint
