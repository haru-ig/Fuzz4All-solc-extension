pragma solidity ^0.8.0;
contract MyContract64_v0 {
    _Interface64_v0 public contract64;
    function modifyContract64(address a)  external  {
        contract64 = _Interface64_v0(a);
    }
}
