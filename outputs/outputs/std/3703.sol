pragma solidity ^0.8.0;
contract Multiprecision is Math {
    string private a;
    uint aBytes;
    function setA(string memory _a, uint _aBytes) public {
        a = _a;
        aBytes = _aBytes;
        value = 0;
    }
    function getA() public view returns (uint, string memory) {
        return (aBytes, a);
    }
    function sum(uint x, uint y) public view returns (uint) {
          return add(x, y);
    }
    function sub(uint x, uint y) public view returns (uint) {
        if(x > y) return subtract(x, y);
        else return subtract(y, x);
    }
    uint subtract(uint x, uint y) public view returns (uint) {
        return x.sub(y);
    }
}
