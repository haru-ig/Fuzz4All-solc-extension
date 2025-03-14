pragma solidity ^0.8.0;
contract Variable {
    uint x;
    uint constant Y = 7;
    function f() public returns (uint) {
        x += Y;
        return x;
    }
}


import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract ByteStorage {
    uint[] internal value;
    function deposit(uint _amount) public {
        value.push(uint8(_amount));
    }
    function retrieve(uint _address) public returns (uint) {
        uint i;
        uint[] storage _value = value;
        for (i = 0; i < _value.length; i ++) {


            if (uint8(_value[i]) == _address[i]) {
                return _value[i];
            }
        }
        require(false,"not found");

        return 0;
    }
}
