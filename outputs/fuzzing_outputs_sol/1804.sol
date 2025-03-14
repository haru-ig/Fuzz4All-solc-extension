pragma solidity ^0.8.0;
 contract ZeroFallback {
    function fallback() public payable {assembly {msg.data}} }
}


pragma solidity ^0.8.2;
contract Caller {
    constructor() public {
    }
    function getContract() public returns (bytes4);
    function readData() public;
    function error() public;
    function errorReturn() public returns (bytes, bytes memory) { error(); }
    function return1() public { assembly {
        let t := call(0, 0, calldata(0), 0, 0)
        let memorySize := mload(t)
        let memoryAddr := add(t, 32)
        returndatacopy(0, memoryAddr, memorySize)
   } returndatacopy(0, 0, 0) }
}
