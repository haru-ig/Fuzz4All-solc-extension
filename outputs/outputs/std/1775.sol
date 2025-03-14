pragma solidity ^0.8.0;
contract Memory {
    function returnPtr(address ptr) public pure returns (address t) { require(ptr!= 0x0); t = ptr; }
    function returnBytes(bytes memory t) public pure returns (bytes t2) { t2 = t; }
}
