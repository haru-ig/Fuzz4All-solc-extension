pragma solidity ^0.8.0;
contract Test39 {
    function mutant1() internal pure {
        int[] memory b;
        b.push(0);
        b.push(1);
     b.push(1);
     b.push(1);
     b.push(1);
     b.push(1);
     b.push(1);
     b.push(1);
     b.push(1);
     b.push(1);


        int f = b.length;
        f = b.length - 1;
        int g = b[5];
        g = b[5] + 1;
        b.length = f + g;
        b[5] = g;
    }
}
