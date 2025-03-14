pragma solidity ^0.8.0;
contract Mutated2{
    uint[] public a;
    address public b;
    address mutatedAddr;
    constructor(){
        a = new uint[](3);
        a[0] = 0;
        a[1] = 200;
        a[2] = 3000;
        b = address(1);

        require(a[2]!= 3000, "Cannot be changed");
        b = address(3);
        require(a[2]!= 3000, "Cannot be changed");
    }
    function mutated21() public {
        address mutated = a[2];
        a[0] = 1;
        a[2] = mutated % 2;

    }
    function mutated22() public returns (uint) {
        uint x = 2;
        while (x!= 0){
            x = 196 - x % 2;
        }
        return a[0] * 196 % 196;
    }
    function mutated23() public returns (address) {
        return a[0] * 12 % 196;
    }
    function mutated24() public returns (address) {



        address x;
        (x, a[0]) = (a[2], a[0] + 5);
        return x;
    }
    function mutated25() public returns (address) {
        (address x, a[0]) = (a[2], a[0] + 5);
        return x;
    }
}
