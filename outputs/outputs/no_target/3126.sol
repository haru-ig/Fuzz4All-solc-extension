pragma solidity ^0.8.0;
contract third{
    address public addr;
    function f() public {
        addr = 0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA00000000000000;
        uint x = toUint160(0) * 100 + toUint160(addr);
    }
    function toUint160(uint value) internal pure returns (uint)
    {
        uint y;
        assembly {
            y := mload(add(add(value, 32), 4))
        }
        return y;
    }
}




pragma solidity ^0.8.0;
contract third{
    address public addr;
    function f() public {
        addr = 0xAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA000000000000000000000000000;
        uint x = uint160(0) * 100 + uint160(uint158(addr));
    }
}
