pragma solidity ^0.8.0;
contract Mutated2{
    uint[] public a;
    address public b;
    bool public c;
    constructor(){
        a = new uint[](1);
        a[0] = 0;
        b = address(0);
        c = false;
    }
    function mutated21() public returns (uint) {
        return (a[0] + 3) % 4;
    }
    function mutated22() public returns (uint) {
        uint x = 4;
        while (x!= 0){
            x = 16 - x % 4;
        }
        return (a[0] + 3) % 4 + 6;
    }
}

pragma solidity ^0.8.0;
contract Mutated3{
    uint[] public a;
    address public b;
    bytes32 public c;
    constructor(){
        a = new uint[](1);
        a[0] = 0;
        b = address(0);
        c = bytes32(0);
    }
    function mutated31() public returns (uint) {
        return (a[0] + 3) % 4;
    }
    function mutated32() public returns (uint) {
        uint x = 4;
        while (x!= 0){
            x = 16 - x % 4;
        }
        return (a[0] + 3) % 4 + 6;
    }
}
