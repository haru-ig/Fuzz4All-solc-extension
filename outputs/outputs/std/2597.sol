pragma solidity ^0.8.0;
interface ISolidityFunctionCaller{
    function getCallerAddressWithEVMException(bytes memory _function) external view returns(address);
}
