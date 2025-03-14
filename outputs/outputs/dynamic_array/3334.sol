pragma solidity ^0.8.0;
interface I2 {}

interface I3 {
    function use(uint256 key, bytes4 functionSelector, I2 data) external;
}

pragma solidity ^0.8.0;
interface I4 {
    function use(bytes4 functionSelector, I2[] memory data) external;
}

pragma solidity ^0.8.0;
interface I5 {
    function use() external;
}
interface I6 {
    function use(uint256 key, bytes4 functionSelector) external;
}

pragma solidity ^0.8.0;
interface I7 {
    function use(uint256 key, bytes4 functionSelector) external;
}
interface I8 {
    function use(uint256 key, bytes4 functionSelector) external;
}<fim_middle>interface I9 {
    function use(I2[] memory data, I3 data) external;
    function use(bytes4 functionSelector, I1 data, I2[] memory data) external;
}
