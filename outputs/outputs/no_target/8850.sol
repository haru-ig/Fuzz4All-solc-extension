pragma solidity ^0.8.0;
contract IncompatibleABIv2SemanticsAreMutated5 {
    function test1 (bytes _b) public pure returns (bytes memory) {
        return _b;
    }
    function test2 (uint _uint) public view returns (uint) {
        return _uint;
    }
    uint public f2 = 9240;
    function test3 (uint _uint) public view returns (uint) {
        return _uint;
    }
    function test4 (uint _uint) public view returns (uint) {
        return _uint;
    }
    function test5 (address _address) public pure returns (address) {
        return _address;
    }
    bytes32 _varbytes32;
    bytes memory _bytesmemory;
    uint constant _uint87 = 4489us;
    function test6 (uint _uint) public view returns (uint) {
        return _uint;
    }
    function test7 (uint _uint) public view returns (uint) {
        return _uint;
    }
    bytes4 _byte4;
    function test (uint _uint88) public view returns (uint) {
        return _uint88;
    }
}
