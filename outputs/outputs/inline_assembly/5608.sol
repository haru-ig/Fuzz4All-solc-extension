pragma solidity ^0.8.0;
contract ConstantAccessBlock13 {
    function test() public returns (bool) {
        bool _var;
        uint _var2;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xc0de0000000000000), add(mload(0x40), 0x200000000000000000000000000000000000))
                _var2 := staticcall(gas(), keccak256(abi.encodePacked("mload(", add(mload(0xc0de0000000000000), 0x2000000000000000000000000000000000000000000), 0x00)))
                if and(
                    _var,
                    staticcall(gas(), 0xf6ae3de2, abi.encodePacked(0xada, 0x66738dc7879a16be666b56654b9fdbe123077321b2455c8487be58b364a2848))
                )
                else{
                    _var2 := 0x00
                }
            }
        }
        return _var2 == uint(0x29);
    }
}
