pragma solidity ^0.8.0;
interface Example18 {
  fallback (uint256 value) external;
}
contract Example19 is Example18 {
}

pragma solidity ^0.8.0;
contract Example20 is Example18 {
}
