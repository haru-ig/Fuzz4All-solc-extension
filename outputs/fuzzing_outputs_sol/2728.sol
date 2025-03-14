pragma solidity ^0.8.0;
abstract contract Basic {
    function () external payable {}
    fallback() external payable {}
}
