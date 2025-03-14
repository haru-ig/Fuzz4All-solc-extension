pragma solidity ^0.8.0;
interface Caller2Mod {
    function fallback() external payable;
}

pragma solidity ^0.8.0;
import "./Caller2Mod.sol";
contract Caller2ModDerived is Caller2Mod {
    modifier derived(uint1 z) {
        require(z > 1, "caller2 Mod: z is required to exceed 1");
        _;
    }
    function fallback() external payable derived(42) {}
}
