pragma solidity ^0.8.0;

contract OldSemanticsFallbackPayable is OldSemanticsFallbackMutatingPayable {

    function set(uint256 _v) internal { value = _v; }
}
