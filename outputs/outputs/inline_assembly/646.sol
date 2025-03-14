pragma solidity ^0.8.0;
contract Mutator {
    uint v;
    function testMethod(int v) public pure {
        v = mul(v, 1);
    }
}
contract Say {

    mapping(uint => uint) public numbers;
    function testMapping(uint x) public pure {
        numbers[x] = 1;
    }
}
contract Greeter {
    mapping(uint => uint) public numbers;
    function testMapping(uint x) public pure {
        uint x1 = numbers[x];
    }
}
contract Caller {
    function testMethod(uint y) public pure {
        y = y + 1;
        v = y;
    }
}
contract C {
    function f() public pure {
        uint j = v;
        assembly {



            j := v + 1
        }
    }
}
contract C2 {
    function f() public pure {
        uint j = v;
        uint z = 2 * v;
        assembly {






            z := mul(6, add(1, div(z, 2))))
            j := mul(4, j)
        }
    }
}
contract MutatorCall {
    function testMethod() public payable {
        v = mul(v, 1);
        uint x = calldata(0);
        uint z = 0;
        uint j = 0;

        assembly {

            z := mul(2, add(calldataload(ptr), 1))
            z := mul(13, mul(z, 2))
            z := mul(z, 2)
            z := mul(z, 3)
            z := add(z, 4)
            j := calldataload(ptr)
        }
    }
}
contract Mul {
    uint v;
    function test(uint w) public pure {
        v = mul(v, w);
    }
}
contract MulCall {
    uint v;
    function test() public pure {
        uint x = 1;
        v = mul(x, 2);
    }
}
contract No {
    uint v
