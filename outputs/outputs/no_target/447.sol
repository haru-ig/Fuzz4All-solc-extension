pragma solidity ^0.8.0;
interface I {
    Semantic value;
    function reset() external;
}

pragma solidity ^0.8.0;
import "../semantic/Semantics.sol";
contract Immutable {
    const uint256 ONE = 1;
}

pragma solidity ^0.8.0;
contract Constr {
    constructor(uint16) {
    }
}
