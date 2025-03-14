pragma solidity ^0.8.0;
contract Mutant {

    address payable _addr;


    function constructorWithAddress(address payable addr) public {
        require(msg.sender == _addr);
        _addr = addr;
    }


    function getAddress() private view returns (address payable) {
        return address(this);
    }


    function getAddr(uint256 i) private view returns (address payable)  {
         (uint256 k_length, bytes memory k, bytes32 index, bytes memory prefix, bytes4 method) = i.getAddreIndex(this);
         address payable retAddr = address(0);
         require(method == 0);
         require(k_length <= 35);
         for (uint256 iter = 0; iter < k_length; iter++) {
             bytes32 mask = bytes1(255 - iter) << (iter * 8);
             bytes memory k_part = _decode_bytes32(k, prefix.add(k_length).add(iter));
             if (k_part!= 0) {
                 if ((k_part >= 0x20 && k_part <= 0x7f)) {
                     retAddr = retAddr.add(address(uint160(k_part)));
                     continue;
                 }
                 mapping(address => bool) memory lookup;
                 for (uint256 j = 0; j < iter; j++) {
                     bytes memory b = new bytes(32);
                     for (uint256 j_2 = 0; j_2 <= 15; j_2++) {
                         if (j_2 == 0) {
                             b[j] = _bytes3(128);
                         }
                         else {
                             b[j] = bytes1(255 - j_2);
                         }
                     }
                     bytes memory _k = new bytes(k_length - iter + 1);
                     for (uint256 j_3 = 0; j_3 < j; j_3++) {
                         _k[j_3] = bytes1(255 - j_3);
                     }
                     calldata ret = abi.decode(k_part, (bool, bytes[]), (b, _k));
                     if (!lookup[ret.data1]) {
                         ret
