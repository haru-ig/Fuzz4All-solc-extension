pragma solidity ^0.8.0;
contract newY{
    uint256 public x = 123;
    uint256 public constant y = 777;

    function f(): uint256 public {
        return x;
    }

    function func(): void{
        uint256 z;
        while (x == 123) {
            x++;
            z = x + y;
        }
    }
}
