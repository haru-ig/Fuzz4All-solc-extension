pragma solidity ^0.8.0;
interface _Interface64_v3 {
    function foo5(bytes memory _data)  external  returns ( bool ) ;
}
interface _Interface64_v4 {
    function foo5(bytes calldata _data)  external  returns ( ( bytes1, uint16, bool, bytes32, uint256, bytes1 ) memory ) ;
}
