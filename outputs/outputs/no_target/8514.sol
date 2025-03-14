pragma solidity ^0.8.0;
contract Equivalent {
    uint public a;
    uint[16] public b;
    uint public c;
    constructor(uint[5] memory _value1, uint _value2, uint[16] memory _value3) public {

        a = 0;
        b = _value1;
        c = _value2;
    }
    function set(uint b, uint b_1, uint, uint, uint) public {
        b = b + b_1;
        b = b + 64;
        c = 54;
        b = b + 256;
        b = b + 512;
        b = b + 1024;
    }
}

pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract Equivalent {
    IERC20 mytoken;
    uint public a;
    uint public b;
    uint public c;
    constructor(uint _initial_value) public {
        mytoken = IERC20(0x783706548810e2A07687605d98a59513c81F287c);
        a = 64;
        b = 0;
        c = 0;
    }
    function set(uint, uint, uint) public {
        a = 0;
        b = 0;
        c = 42;
        b = 256;
        a = 256;
    }
    }
