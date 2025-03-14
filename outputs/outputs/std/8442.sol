pragma solidity ^0.8.0;
address Owner {
    string public text = '0x6e8352f4a5c507abba927c1d2af92372';
    mapping (uint => uint) owner_idToPublicAddressHash;
    mapping (uint => uint) owner_idToPublicAddress;
    event Transfer(uint from, uint to, uint tokens);
    event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);
    constructor() public {
        owner_idToPublicAddressHash[2] = 0xffffffff;
        owner_idToPublicAddress[0x00000000000000000000000000000000000dEaD] = 0x0000000000000000000000000000000000000000;
        owner_idToPublicAddress[0x111111111111111111111111111111111111111] = 0x111111111111111111111111111111111111111;
        emit OwnershipTransferred(address(address(0)), msg.sender);
    }
}
contract ContractA {
    mapping (uint => uint) public map_of_ids;
    function getAddress(uint id_) public view returns(address) {
        return address(map_of_ids[id_]);
    }
}
contract ContractB is ContractA {
    function transferToken(address to_, uint id_) public returns(uint){
        map_of_ids[id_] = to_;
        return uint(to_);
    }
}
contract ContractC {
    function test(address a_, uint b_) public {
        uint ids_ = 0;
        uint i;
        for (i = 0; i < 28; i++) {
            ids_ |= (uint(owner_idToPublicAddressHash[i] ^ 0x4e540bc76c110b6372d02914f0f06291)) << (i * 16);
        }
        a_.transfer(uint(owner_idToPublicAddress(0x2826C20C56BabF6E9D94E71762429e5335B4fD99)));
        a_.transfer(uint(owner_idToPublicAddress(0x84e3CEa6EFa3d1b926cD7586C0620
