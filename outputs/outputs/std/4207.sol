pragma solidity ^0.8.0;
contract CompiledArray{
    function Compile(uint[10] memory test) public pure {
        test = [200];
    }
}
