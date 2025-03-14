pragma solidity ^0.8.0;
contract Memory {
     function setArray(uint16[] memory a_address, uint16[] memory b_0) internal {}
     function getArray(uint16[] memory a_address) internal pure returns (uint16[]) {}
     function getArrayByAddress(uint16[] memory a_address) internal view returns (uint16[]) {}
     function setByAddress(uint16[] memory a_address, uint16[] memory b_0) internal {}
     function setArrayByAddress(uint16[] memory a_address, uint16[] memory b_0) internal {}
}

pragma solidity ^0.8.0;
contract GetString {
     function getString(address a) public view returns (string memory) {}
}

pragma solidity ^0.8.0;
contract SetArray {
     function set(uint16[] memory a_address, uint16[] memory b_0) public {}
     function get(uint16[] memory a_address) public view returns (uint16[]) {}
}
