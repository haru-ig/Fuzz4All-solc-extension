pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample69 {
    struct A{
        uint256 f1;
    }
    struct B{
        uint256 f1;
    }
    B b;
    function setFB(uint h, uint f2) public {
        b.f1 = h;
        uint f1v = b.f1;
        b.f1 = h;
        b.f1 = (h * f2);
        uint f1f = b.f1;
    }
    function getFB( ) public view returns(uint b1,uint b2) {
        return(b.f1,b.f1);
    }
}
mapping (address => uint) public balances;
address[] public addressList;
contract MultiContactAddressExample104 {
    uint8 b;
    A[] _contacts;
    mapping (address => uint) public addressesB;
    function setFB(uint h, uint f2) public {
        for(uint i=0;i<addressList.length;i++) {
            bytes memory hex = abi.encodePacked(uint(uint256(addressList[i]) >> 272),uint(uint256(addressList[i]) >> 192),uint(uint256(addressList[i]) >> 96),uint(uint256(addressList[i]) >> 192),uint(uint256(addressList[i]) >> 1),uint(uint256(addressList[i])));
            for(uint j=1;j<=64;j++) {
                addressList[i] = bytes32(bytes32(addressList[i])+b & (bytes32(1)<<b)).toEthAddress(hex,uint(i));
            }
        }
        balances[address(this)] += (h * uint(32));
        _contacts.push(A({f1:h}));
    }
    function getFB( ) public view returns(uint h,uint b2) {
        h = uint(uint256(balances[msg.sender]) >> 167);
        uint count = _contacts.length;
        b2 = 0;
