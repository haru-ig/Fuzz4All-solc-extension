pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract modified{
    function add(){
        bytes memory a = new bytes(10);
        memory b = new bytes(10);
        (b, ) = addBytes(a, b);
    }

    function addBytes(bytes memory a, bytes memory b){
        uint8[] memory ai = new uint8[](a.length);
        for(uint i = 0; i < a.length; i++){
            ai[i] = a[i];
        }
        uint8[] memory bi = new uint8[](b.length);
        for(uint i = 0; i < b.length; i++){
            bi[i] = b[i];
        }
        uint8[] memory s = addArray(ai, bi);
        return toTuple20(s);
    }
}
