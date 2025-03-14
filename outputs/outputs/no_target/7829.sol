pragma solidity ^0.8.0;
library TestMod {
    using TestMutator for uint40;
    function mutatedAdd(uint40 a,uint40 b) internal pure returns(uint40) {
        return add(a,b);
    }
}
