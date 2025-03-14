pragma solidity ^0.8.0;
contract MutationEquivalence39
{
    uint x;
    uint y;
    function add() public {
        x = x + 1;
    }
    function subtract() public {
        x = x - 1;
    }
    function multiply() public {
        x = x * 1;
    }
    function divide() public {
        x = x / 0;
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence40
{
    uint[5] memory s_memory;
    uint[2] memory s_memory2;
    function add() public {
        s_memory[3] = s_memory[3] + 1;
    }
}
contract MutationEquivalence41
{
    function add() public {
        uint256 a;
        uint256 b;
        assembly {
            a := mload(0x42)
            b := mload(0x43)
            return a + b
        }
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence42
{
    uint256 a;
    function add() public {
        a = a + 100;
        a = a + 100;
    }
}
contract MutationEquivalence43
{
    uint256 a;
    uint8[3] memory b;
    function add() public {
        for(uint i = 0; i < 3; i++) {
            a = a + b[i];
        }
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence44
{
    uint64 a;
    uint[3] memory b;
    function add() public {
        for (uint w = 0; w < 2; w++) {
            for(uint i = 0; i < 3; i++) {
                a |= b[i];
            }
            a = a * a;
        }
    }
}

pragma solidity ^0.8.0;
contract MutationEquivalence45
{
    uint64 a;
    uint[3] memory b;
    function add() public returns (uint8 c) {
        for(uint w = 0; w < 2; w++) {
            for(uint i = 0; i <
