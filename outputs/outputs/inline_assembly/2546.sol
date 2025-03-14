pragma solidity ^0.8.0;
contract Comp36{
uint32 a;
constructor(uint32 _initialAmount) {
    a = _initialAmount;
}
function add(uint _b) public{
    a = a + _b;
}
    function subtract(uint _b) public{
        a = a - _b;
    }
    function multiply(uint _b) public{
        a = a / _b;
    }
}

pragma solidity ^0.8.0;
contract Comp37{
uint32 a;
constructor(uint32 _initialAmount1) {
    a = _initialAmount1;
}
function add(uint32 _b) public{
    a = a + _b;
}
    function subtract(uint32 _b) public{
        a = a - _b;
    }
    function multiply(uint32 _b) public{
        a = a * _b;
    }
}
pragma solidity ^0.8.0;
contract Comp38{
uint32 y;
mapping(address => uint32) public x;
constructor(uint32 _amount) {
    x[address(0)] = _amount;
    y = _amount;
}
function multiply() public{
    require(a > 0);
    uint32 y = 0;
    for( uint _i_ = add(1) ; _i_ <= a ; ) {
        y = y + mul(mul(_i_), x[address(0)]);
        _i_ = add(1);
    }
}
    function write() public{
        x[msg.sender] = x[msg.sender] + 1;
        y = a - x[msg.sender];
    }
}
pragma solidity ^0.8.0;
contract Comp38b{
function divide() public{
    uint32 result;
    require(x["0"] > 0);
    while(x[address(0)] > 0) {
        result = a/x[address(0)];
        x[address(0)] = a%x[address(0)];
        a = result;
    });
}
    function write() public{
        x["0"] = a/b;
        b = 0;
    }
}
