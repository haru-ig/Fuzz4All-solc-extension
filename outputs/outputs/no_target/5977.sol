pragma solidity ^0.8.0;
library MyLib {
    function f() public pure returns (bytes memory) {
        MyLib.f().append(abi.encode("\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f"));
        return MyLib.f();
    }
}

pragma solidity 0.8.0;
contract Test {
    function f(bytes memory input) public pure returns (bytes memory) {
        input.append(abi.encode("\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f"));
        return input;
    }
}
