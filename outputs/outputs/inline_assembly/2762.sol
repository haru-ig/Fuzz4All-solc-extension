pragma solidity ^0.8.0;
contract C {
    uint namelength = 10;
    function f() public pure returns(uint16){
        return 0x16;
    }
}

pragma solidity ^0.7.6;
contract A {
    uint a = 0x1;
    uint b = 0x2;
    function f() public pure returns(uint){
        return address(a).balance;
    }
}
pragma solidity ^0.7.6;
contract B {
    uint c = 1;
    uint d = 2;
    function g() public pure returns(uint) {
        return address(c).balance;
    }
}
contract C {
    function f() public pure returns(uint) {
        return b();
    }
    function b() public pure returns(uint){
        return address(this).balance;
    }
}
