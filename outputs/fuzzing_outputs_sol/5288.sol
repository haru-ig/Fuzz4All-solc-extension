pragma solidity ^0.8.0;
interface Fallback3 {
        function a(uint64 x) external returns (uint64);
        function b(uint64 x) external returns (uint64);
}
pragma solidity ^0.8.0;
interface Fallback2 {
        fallback() external;
}
pragma solidity ^0.8.0;
interface Fallback1 {
        fallback (uint256) external;
}
pragma solidity ^0.8.0;
interface Fallback0 {
}
