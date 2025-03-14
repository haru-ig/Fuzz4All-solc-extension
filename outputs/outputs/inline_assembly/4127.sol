pragma solidity ^0.8.0;
contract ModifiersA {
    uint constant x = 1;
    function test (uint x) public {
        x = x + 1;
        x = x + 5;
        x = x + 11
    }
}

pragma solidity ^0.8.0;
contract ModifiersB {
    uint constant x= 1;
    function test (uint x) public {
        x = x + 5;
        x = x + 1;
    }
}

pragma solidity ^0.8.0;
contract ModifiersC {
    uint constant x = 1;
    mapping (address => bool) private isTrusted;
    mapping (address => bool) private isBlocked;
    function test (uint x) public {
        isBlocked[msg.sender] = true;
        isTrusted[0x9D2F89748e71ad56d582306C047562E94B3966E6] = true;
        isTrusted[0xD976BE46073114539667567629098CB2085C8A74] = true;
        x = x + 2;
        x = x + 5;
        x = x + 11;
        if (keccak256(abi.encode(isTrusted[msg.sender], isBlocked[msg.sender])) == keccak256(abi.encode(x, msg.sender)))) {
            delete isBlocked[msg.sender];
        }
        if (keccak256(abi.encode(isTrusted[0x9D2F89748e71ad56d582306C047562E94B3966E6], isBlocked[0x9D2F89748e71ad56d582306C047562E94B3966E6])) == keccak256(abi.encode(x + 25, msg.sender))) {
            isTrusted[0x9D2F89748e71ad56d582306C047562E94B3966E6] = true;
        }
    }
}
