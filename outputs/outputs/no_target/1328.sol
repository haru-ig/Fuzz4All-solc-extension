pragma solidity ^0.8.0;
interface Mutate_0003 {
    function setX2(uint256 x) external;
}
library ContractAddress {
    function encode(uint160 addr) internal pure returns (bytes memory)
    {
        return bytes(uint160ToString(addr));
    }
}
library StrLib {
    constructor(bytes memory mem) public
    {
        require(mem.length == 20, "Wrong length");
        _;
    }

    function uint160ToString(uint160 memory addr) internal pure returns(string memory)
    {
        bytes memory data = new bytes(20);

        for (uint i = 0; i < 20; i++)
        {
            data[i * 2] = byte(uint8(uint160ToString(uint160(uint160(data[i * 2 + 1]))[i])) + offset(uint8(uint160ToString(uint160(uint160(data[i * 2 + 1]))[i]))));
            data[i * 2 + 1] = byte(uint8(uint160ToString(uint160(uint160(data[i * 2 + 1] + uint160(data[i * 2 + 1] % 100)) % 10))) + offset(uint8(uint160ToString(uint160(uint160(data[i * 2 + 1] + uint160(data[i * 2 + 1] % 100)) % 10))))));
        }

        data[0] = 0x1;
        return string(data);
    }
    function offset(uint160 n) private pure returns(uint8)
    {
        if ((n / 1000 > 0)) {
            return uint8(n / 100 / 10) - 1;
        } else {
            return uint8(n / 100 - 2);
        }
    }
}
