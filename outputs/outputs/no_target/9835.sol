pragma solidity ^0.8.0;

contract A {
    uint256 public one;
    constructor (address _owner) {
        one = 17;
    }
}

contract B {
    A private a;
    constructor () {
        a = new A(address(this));
        a.one = 25;
    }
}

contract A {
    uint256 public one;
    constructor () {
        one = 17;
    }
}

contract B {
    A private a;
    constructor () {
        a = new A;
        a.one = 25;
    }
}

contract A {
    uint256 public one;
    constructor () {
        one = 17;
    }
}

contract B {
    A private a;
    constructor (uint256 _one) {
        a = new A;
        a.one = _one;
    }
}
contract B {
    A private a;
    uint256 public one;
    constructor () {
        a = new A;
        a.one = one;
    }
}
contract D is B {

}
contract AppTest {
    function test(B x) external {
        bytes memory data = "0x" ;
        assembly {
            __write(0, add(data, 0x20))
            x.one = mstore(0, sub(x.one, 0x1))
        }
    }
    function mstore(address _addr, uint256 _value) internal pure returns (uint256) {
    return _addr.call(abi.encodeWithSelector(0x38f8, _value));
}
    function getMemorySize() public pure returns (uint256 memsize) {
        return 1 << 16;
    }
}
