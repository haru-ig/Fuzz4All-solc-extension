pragma solidity ^0.8.0;
contract Test84{
    function test1() public pure{
        uint[5] memory memory_storage;
        function call_with_storage() public pure returns(uint[5])
        {
            _;
            return memory_storage;
        }
        function call() public pure returns (uint[5]) {
        uint n = 0;
        uint[5] storage data_storage = memory_storage.clone();
    }
}
