pragma solidity ^0.8.0;
contract Mutant {
    uint256 z;
    function setZ(uint256 _z) public {
        z = _z;
    }
}
contract Test {
    Mutant mutant;
    bytes32 _data;

    event Fallback(uint256 z);

    modifier Test(){
        uint256 z = 100;
        uint256 res = (uint(msg.data)) + 100;
        emit Fallback(z);
    }

    function test() public Test{
        _data = bytes32(uint(msg.data) + 1);
        mutant = new Mutant();
        mutant.setZ(z);
    }

    function getz() public view returns (uint256){
        return mutant.z;
    }

    function () public payable returns (bytes memory){
        bytes memory d = new bytes(1);

    }

    function fallback() public payable{
        uint storedz = mutant.z;
    }
}
