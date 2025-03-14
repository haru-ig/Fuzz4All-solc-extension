pragma solidity ^0.8.0;
interface Foo {
    function hello(address _bar) external view returns (uint);
}
contract Example {
    uint[50] public arr;
    uint public foo;

    function setFoo(uint _foo) public {
        foo = _foo;
    }

    function setBar(bytes memory _bar) public {
        arr[14] = int(uint256(_bar));
    }

    function getHello() public view returns (uint) {
        return int(_foo);
    }

    function hello(address _addr) public returns (uint) {
        return arr[_addr];
    }
}
