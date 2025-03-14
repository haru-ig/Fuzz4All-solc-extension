pragma solidity ^0.8.0;
contract Modifications {
    address public toAdd;
    function mod1(bytes16 _y)public pure returns(bytes32) {
        return _y;
    }
    function mod2(bytes7 _z)public pure returns(bytes2) {
        return _z;
    }
    function mod4(bytes32 _y)public pure returns(address) {
        toAdd.call(abi.encodeWithSelector(0, 2));
    }
}
contract Main {
    address public toAdd;
    IFabric public instance;
    Modifications public instance2;
    constructor(address _toAdd, bytes16 x, bytes7 y, bytes32 z) public {
        toAdd = _toAdd;
        y = _y;
        mod1(y);
        z = _z;
        mod2(z);
        if (x == 0x0) {
            instance2 = new Modifications();
            if (((bytes16)(mod1(y))) == 0x0)) {
                (instance2.mod1.value(0x1234)("")) == 0x123;
            }
        }
    }
    function f() public {
        instance.appendBytes();
        instance.appendBytes();
        if (x == 0x0) {
            (instance.appendBytes.value(0x1234)("")) == 0x1234;
        }
        instance.appendBytes2(toAdd);
    }
}
pragma solidity ^0.8.0;
contract Address {
    uint public value;
    address public receiver;
    constructor(uint _value, address _receiver) public {
        value = _value;
        receiver = _receiver;
    }
    function f() public view returns(address) {
        return receiver;
    }
}
contract Static {
    uint public value;
    constructor(uint _value) public {
        value = _value;
    }
    function f() public returns(uint) {
        return value;
    }
}
