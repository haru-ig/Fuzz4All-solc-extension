pragma solidity ^0.8.0;
contract Mutated3{
    mapping(uint => uint[]) public numbers;
    uint[] public a;
    constructor(){
        a = new uint[](1);
        a[0] = 0;
    }
    function mutated31() public returns (uint[] memory) {
        a[0] = numbers[1].len;
        return numbers[1];
    }
    function mutated32() public returns (uint[] memory) {
        uint x = 4;
        while (x!= 0){
            x = 16 - x % 4;
        }
        uint[] memory y = numbers[1];
        numbers[1] = new uint[](1);
        numbers[1][0] = (a[0] + 3) % 4 + 1;
        return numbers[1];
    }
}
