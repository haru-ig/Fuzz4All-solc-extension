pragma solidity ^0.8.0;
interface MallocInterface {

    function _malloc_ptr(uint length) external returns (address);
}
