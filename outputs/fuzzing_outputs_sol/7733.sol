pragma solidity ^0.8.0;
contract MutatedSemanticsFallback {
    struct NewSemanticsFallbackS {
        mapping(uint256 => uint256) public data;
        function get() public view returns (uint256) { return data[msg.sender]; }
    }
    uint256 internal value;
    NewSemanticsFallbackS internal newSem;
    function get() public payable returns (uint256) { return newSem.get(); }
    function set(uint256 _v) internal { newSem.set(_v); }
    receive() external payable { value += msg.value; }
}
