pragma solidity ^0.8.0;
contract Convert{
    function ConvertFromHex(string memory str) internal pure returns (uint number) {
        assembly {
            number := mload(add(str, 32))
        }
    }
}
