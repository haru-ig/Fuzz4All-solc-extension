pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations36_Semantics_Mods_ExtL1 is SemanticEquality_ArrayMutations35_Semantics_Mods_ExtL1 {
    function() external view returns (uint) {
        return x + y + 10;
    }
}
address addr = address(uint160(0x9c3804e12652a81e121a5f6d90df6d945df28f7a));
addr.send(uint128("10000000.0"));
