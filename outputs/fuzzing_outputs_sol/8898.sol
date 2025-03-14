pragma solidity ^0.8.0;
interface Sucking {
   fallback(uint256) external;
}

interface NotSucking {
   fallback() external;
}
