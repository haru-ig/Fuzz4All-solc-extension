pragma solidity ^0.8.0;
contract A {
    uint d;
    function g() public returns (uint) {
        return uint24(address(this).balance);
    }
}

pragma solidity ^0.8.0;
contract B {
    uint d;
    uint24 c;
    function g() public returns (uint) {
        return uint24(c << 1) | c;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint d;
    uint c;
    function g() public returns (uint) {
        return uint(0) << c;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint d;
    uint24 c;
    function g() public returns (uint) {
        return uint24(c + 0x1000) - 0x1000;
    }
}
