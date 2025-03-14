pragma solidity ^0.8.0;
import "../../interfaces/IInterface.sol";
contract Proxy is IInterface_v3{
    constructor(bytes32 id) public {}

    function set(int256 int256) public { }

    function bar256(uint40 input) public pure virtual returns(bytes memory){

    }
}
