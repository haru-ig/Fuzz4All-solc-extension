pragma solidity ^0.8.0;
interface I {
        fallback function() external payable;
        receive() external;
}
