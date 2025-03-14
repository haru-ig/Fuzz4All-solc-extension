pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract ArrayMutationsC6457 {
    uint x;
    bytes32 memory bytesValue;
    bytes32 bytesValue1;
    bytes memory bytesValue2;
    bytes bytesValue3;
    function setA(uint x_) public {
        x = x_;
    }
    function setB(uint[] memory numbers_) public {
        bytesValue = numbers_[0];
        bytesValue1 = numbers_[1];
        bytesValue2 = numbers_[2];
        bytesValue3 = "Hello";
    }
    function getA() public view returns (uint, uint[] memory, bytes32, uint) {
        return (x, numbers, bytesValue1, bytesValue.length);
    }
    function getB() public view returns (uint[]) {
        return numbers;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC2 {
    enum E1 {
        A,
        B
    }
    function setArray(E1 x_, address x_) public {
        x = x_;
    }
    function getArray() public view returns (E1) {
        return x;
    }
}

pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract ArrayMutationsC4 {
    address public a;
    uint public b;
    e1 public x;
    function setArrayA(address a_, uint b_) public {
        a = a_;
        b = b_;
    }
    function setArrayB(uint b_) public {
        b = b_;
    }
    function getA() public view returns(address) {
        return a;
    }
    function getB() public view returns(uint) {
        return b;
    }
}
pragma solidity ^0.8.0;
pragma experimental "ABIEncoderV2";
contract ArrayMutationsC1 {
    address public a;
    address public b;
    c a1;
    e2 public x;
    function setArrayA(address a_, address b_) public {
        a = a_;
        b = b_;
    }
    function setArrayB(e2 _x) public {
        x = _x;
    }
    function getA() public view returns(address, e1, error(int)) {
        return (a, a1, error(0xdeadBEEF));
    }
    function getB() public view returns(e1, error(int)) {
        return (a1, error(0xdeadBEEF));
    }
}
contract ArrayMutationsC6 {
    e1[] public a;
    address public b;
    function setArrayA(e1[] _a, address _b) public {
        a = _a;
        b = _b;
    }
    function getArrayA() public view returns(e1[]) {
        int x
