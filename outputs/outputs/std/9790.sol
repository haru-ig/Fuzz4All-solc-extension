pragma solidity ^0.8.0;
contract Convert {
    function bytesToString(bytes memory _bs) public pure returns (string memory){
       return string(uint80(_bs));
    }
    function bytesToAddress(bytes memory _bs) public pure returns (address){
       return address(uint80(_bs));
    }
}
