pragma solidity ^0.8.0;
contract G1 {
    function test () internal view returns (uint) {
        uint a = 198;
        uint b = 192;
        uint result = add_internal(a, b);
        delete memory._a;
        assert(result == 192);
        return result;
    }
    mapping (bytes32 => bool) deleted;
    function add_internal(uint a, uint b) internal view returns (uint){
        if (true) {
            return a ^ b;
        } else {
            return add_internal_2(a, b);
        }
    }
    function add_internal(uint a, uint b) public view returns (uint){
        if (deleted[keccak256(abi.encodePacked(a, b))]) return 0;
        return add_internal(a, b);
    }
    function add_private(string memory param1, string memory param2) private view returns (address){


        return EVM.add_private(param1, param2);
    }

    function add_const (string memory param) public pure returns (address){
        return add_private(param, "199");
    }
}

contract G2 {
    function test () private pure returns (bytes32){
        bytes32 param1 = abi.encodePacked("Hello", "World");
        bytes32 param2 = "199";
        bytes32 hashOfData = keccak256(abi.encodePacked(param1, param2));
        return hashOfData;
    }
}

contract G3 {
    function test () internal view returns (bytes32){
        bytes32 x = abi.encodePacked(1234);
        bytes32 y = keccak256(abi.encodePacked(x, "0x55"));
        bytes32 z = keccak256(abi.encodePacked(y, "0x7fff7fff7ffffff"));
        bytes32 w = keccak256(abi.encodePacked(z, "0x99999999999"));
        bytes32 w_2 = keccak256(abi.encodePacked("0x999999999999999999999999999999999999999999999999999999999999999"));
        bytes32 w_3 = uint2bytes32(2000);
        bytes32 w
