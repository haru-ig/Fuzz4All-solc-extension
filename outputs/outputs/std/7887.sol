pragma solidity ^0.8.0;
contract ArrayString_1 {
    string x[3];
    function set(uint x, uint y, string memory b, uint32 e) internal{
        uint j = uint32(uint(y) + uint32(e));
        x[uint32(x[j]) - 1] = b;
    }
    function read(uint x, bool a, uint256 b, uint c) internal pure returns(string memory){
        uint j = uint32(a) + uint32(uint(b)) + uint32(c);
        return x[uint32(x[j]) - 1];
    }
    function set_array_of_bytes(uint x, string memory b, uint32 e) public {
        uint j = uint32(uint(x) + uint32(e));
        x[uint32(x[j])-1] = b;
    }
    function read_array_of_bytes(uint x, bool a, uint256 b, uint c) public view returns(string memory){
        uint j = uint32(a) + uint32(uint(b)) + uint32(c);
        return x[uint32(x[j]) - 1];
    }
    function set_by_index(uint x, uint y, string memory b, uint32 e) public {
        uint j = uint32(uint(y) + uint32(e)) + uint32(x) + 1;
        x[j] = b;
    }
    function read_by_index(uint x, bool a, uint256 b, uint c) public view returns(string memory){
        uint j = uint32(a) + uint32(uint(b)) + uint32(c) + uint32(x);
        return x[j];
    }
    }
