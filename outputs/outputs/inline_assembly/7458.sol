pragma solidity ^0.8.0;
contract Equivalent_contract18 {
    uint constant constant1 = 3;
    uint constant constant2 = 100;
    uint x;
    uint y;
    uint z;
}

pragma solidity ^0.8.0;
contract Equivalent_contract19 {
    uint constant constant1 = 4;
    uint constant constant2 = 100;
    uint x;
}

pragma solidity ^0.8.0;
uint constant constant1 = 5;
uint constant constant2 = 100;
uint x;
uint y;
function setX(uint _value) public {
    x = _value;
}
function setY(uint _value) public {
    y = _value;
}
function zValue() public view returns (uint) {
    x += constant1;
    return x;
}
function multiplyBy(uint _value) public view returns (uint) {
    uint z;
    x = y;
    for (uint i = 0; i < constant2 * _value; ++i) {
        z += x;
        x += y;
    }
    return z;
}
function multiplyByConstant(uint _value) public view returns (uint) {
    if (x!= 0) {
        x = x * constant1;
    }
    uint z;
    for (uint i = 0; i < constant2 * _value; ++i) {
        z += x;
    }
    return z;
}






address xAddress;
address yAddress;
address zValueAddress;
address multiplyByAddress;
address multiplyByConstantAddress;
function setXAddress(address a) public {
    xAddress = a;
}
function setYAddress(address a) public {
    yAddress = a;
}
function zValueAddress() public view returns (uint) {
    xAddress = address(this);
    uint z;
    xAddress = address(this);
    for (uint i = 0; i < constant2; ++i) {
        z += xAddress;
        xAddress = address(this);
    }
    return z;
}
function multiplyByAddress() public view returns (uint) {
    xAddress = address(this);
    uint z;
    for (uint i = 0; i < constant2; ++i) {
        z += xAddress;
        xAddress = address(this
