pragma solidity ^0.8.0;
contract AddressLibrary {

    address public addrA;
    address public addrB;
    address public addrC;
    constructor(){
        addrA = 0x1f2f83183c4eB8B2CFAF2b6968F23b86910a484e;
        addrB = 0xbf439710d708342DccCd5D7C7B547ee69b75C242;
        addrC = 0x49aE208b62f48871eA1901A91F01E744c480F307;
    }

    function getAddrA() public view returns (address) {
        return addrA;
    }
    function getAddrB() public view returns (address) {
        return addrB;
    }
    function getAddrC() public view returns (address) {
        return addrC;
    }
}
