pragma solidity ^0.8.0;
contract Mutater15 {
    string constant public data = "AbCdEfGhIjKlMnOpQrStUvWxXyZ";

    function concat(string memory _address) public view returns (string memory) {
        bytes memory data1 = abi.encode("<NAME>");
        bytes memory data2 = stringToBytes(_address);

        return abi.decode(keccak256(abi.encodePacked(data1, data2)), (string), "binary")[0];
    }
    function stringToBytes(string memory str) public pure returns (bytes memory) {
        bytes memory result = new bytes(str.length);
        for(uint i = 0; i < str.length; ++i) {
            result[i] = byte(str[i]);
        }
        return result;
    }
}
