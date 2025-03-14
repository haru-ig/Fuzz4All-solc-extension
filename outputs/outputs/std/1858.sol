pragma solidity ^0.8.0;
interface MultiplyInterface {
    function multiply(uint256 x, uint256 y) external view returns (uint256);
}

contract SimpleAddInterface {
    AddInterface addr;
    uint constant num = 10;

    function setAddr(AddInterface x) public {
        addr = x;
    }
    function getAdd() public returns (AddInterface) {
        return addr;
    }

    function add(uint x, uint y) public view returns (uint) {
        uint z = addr.add(x, y);
        return z;
    }
    function sub(uint x, uint y) public view returns (uint) {
        uint z = addr.add(x, y);
        return z;
    }
    function mul(uint x, uint y) public view returns (uint) {
        uint z = addr.add(x,y);
        return z;
    }
    function div(uint x, uint y) public view returns (uint) {
        uint z = addr.add(x, y);
        return z;
    }
}
