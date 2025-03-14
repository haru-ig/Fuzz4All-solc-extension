pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (uint e) {
        uint x = 32 + 256;
        uint[1,32,256] memory m;
        m[1,2,3] = uint(0);
    }
}
contract A {
    function myFunction() public pure returns (uint e) {
        uint x = 256 + 42;
        uint[1,32,256] memory m;
        m[1,2,3] = uint(0);
    }
}

pragma solidity ^0.8.0;
contract A {
    function myFunction() public pure returns (uint e) {
        uint x = 42;
        bytes memory b;
        uint[1,42,42] memory m;
        m[1,42,42] = uint(0);
    }
}
contract B {
   address a;
}
contract C {
bytes32 public v;
modifier f() public {

   v = keccak256(abi.encodePacked(""));
   v = keccak256(abi.encodePacked(uint(address(0))));
}
function g() public {
a.delegatecall(f().calldata());
}
function h() public {
g();
}
}
contract D {
    function b(uint x) public returns(uint y) {
    if (address(this).balance == x.div(2)) y = 0x0;
    if (address(this).balance == 2**255) y = 0xFF;
    if (2**255 <= address(this).balance) y = 0xFFFF;
    }
}
contract E {
    bytes public mybytes;
    constructor(uint n) public {
        mybytes = new bytes(n);
    }
}

pragma solidity ^0.8.0;
contract A {
    E e;
}
contract B {
    address a;
    A b;
}
contract D {
    bytes32 public v;
    function h() public {
        a.delegatecall(b.mybytes.delegatecall(v).delegatecall(a.mybytes.delegatecall{value:address(this).balance}()));
    }
}
contract E {
    constructor(uint n) public { }
}
contract f {
    modifier h() public {

        (e);
        v.transfer(address(this).balance);
        uint
