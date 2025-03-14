pragma solidity ^0.8.0;
contract Mutated1 {
    uint public a;
}
pragma solidity ^0.8.0;
contract Mutated2 {
    function a() public pure returns (uint) { return 2; }
}
pragma solidity ^0.8.0;
contract Mutated3 {
    function a() public pure returns (uint) { return 4;}
    function b() public pure returns (uint) { return 3;}
}
pragma solidity ^0.8.0;
contract Mutated4{
    uint constant private constant a = 1;
    uint private constant constant b = 1;
    uint a = a + b;
}
pragma solidity ^0.8.0;
contract Mutated5{
    uint constant private constant a = 32;
    uint8 constant constant b = 8;
    uint8 a = a + b;
}
pragma solidity ^0.8.0;
contract Mutated6{
    function a() public pure returns (uint) { return 4;}
    function b() public pure returns (uint) { return 6;}
}
pragma solidity ^0.8.0;
contract Mutated7{
    uint constant private constant a = 32;
    uint8 constant constant b = 4;
    uint8 a = a + b;
    uint8 a = a * b;
    uint8 a = a / b;
    uint a = a % b;
 }
