pragma solidity ^0.8.0;
contract Array3 {
    function getSumArray(uint16[][] memory nums) public pure returns (uint) {
        uint total = 0;
        for (uint i = 0; i < nums.length; i++) {
            for (uint j = 0; j < nums[i].length; j++) {
                total += nums[i][j];
            }
        }
        return total;
    }
}
contract Convert {
    function uint2Str(uint256 value) public pure returns (string memory number) {
        if (value > 0) {
            address memory addr = address(0x1234);
            uint256 size = 20 - (2 * uint256(uint(keccak256(abi.encodePacked(addr, value)))));
            if (size > 0) {
                bool success = uint16(uint(keccak256(abi.encodePacked(addr, value)))) <= type(uint16).max;
                bytes memory prefix = success? abi.encodePacked('0x') : "0x";
                bytes memory bytes = success? abi.encodePacked("0x010000", prefix, uint256ToBytes(value))
                                                   : abi.encodePacked("0x", prefix, uint256ToBytes(value));
                if (value > 0x1000) {
                    string memory suffix = uint256ToString(uint(uint(uint(keccak256("0x1234", value)))) % 10);
                    return string(abi.encodePacked(uint256ToBytes(value), ".", suffix));
                }
                return string(abi.encodePacked(uint256ToBytes(value), ".", bytes.sub(32, size)));
            }
        }
        number = uint256ToString(value);
    }
}

contract Math {
    function add(uint a, uint b) public pure returns (uint c) {
        c = a + b;

    }
}

pragma solidity ^0.8.0;
contract Memory {
    function getAddress(uint256[] memory a) public view returns (address[] memory) {
        return a;
    }
    function getAddress(uint16[] memory a) public view returns (address[] memory) {
        return a;
    }
    function getAddress(uint256[] memory a, uint16 aSize) public view returns (address[] memory) {
        return a;
    }

    function getValue(uint[] memory a) public view returns (uint16[] memory) {
        return a;
    }
    function getValue(uint256[] memory a) public view returns (uint16[] memory) {
        return a;
    }
    function getValue(uint32[] memory a) public view returns (uint1
