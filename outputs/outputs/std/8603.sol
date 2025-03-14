pragma solidity ^0.8.0;

contract Main
{
    function main() public {
        uint[1, 2, 3, 4, 5, 4733, 3, 4] memory r;
        r.push(10, 4, 5, 6, 7);
        r[5] = 20;
        if (r[r.length - 1]!= 20) revert();
        const uint[] a = [12, 445, 55, 43, 42];


    }
}
