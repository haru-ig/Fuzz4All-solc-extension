pragma solidity ^0.8.0;
contract Semantic0014Base {
    function f(
            uint256 x,
            uint8 y) public pure virtual {}
}
pragma solidity ^0.8.0;
library Semantic0014Helper {
    function f(
            uint256 x,
            uint8 y) internal pure virtual {}
}

pragma solidity ^0.8.0;
library Semantic0014Helper {
    function fNoNewArgsNotCheck(
            uint256 x,
            uint8 y) internal pure virtual {}
}
pragma solidity ^0.8.0;
contract Semantic0014Base {
    function f(
            uint256 x,
            uint8 y) public virtual {}
}

pragma solidity ^0.8.0;
contract Semantic0257Base {
    constructor () public {}
    function f(
            uint256 x,
            uint8 y) external pure virtual {}
}
