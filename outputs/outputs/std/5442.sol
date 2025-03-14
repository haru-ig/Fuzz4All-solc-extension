pragma solidity ^0.8.0;
contract Mutate10{
    uint public initialbalance = 1;
    modifier MyModifier {}
    constructor() {
        initialbalance *= 21;
        initialbalance /= 11;
        initialbalance

        MyModifier {initialbalance += 1;}
        MyModifier {initialbalance -= 2;}
    }
}


pragma solidity ^0.8.0;

/* This is a standard guessing game where you have to guess the secret password for your 6x3 gridlock machine.

The key is to guess secret numbers, so that you don’t accidentally guess an answer to a password. (See: https:

You need to guess 12 numbers, and you can only guess numbers between 1 and 5, inclusive. To complete the game, you need to guess the number underneath the 3x2 gridlock, and you also need to guess that number underneath the 6x6 gridlock.

If you guess the numbers underneath the 3x2 gridlock before or during guessing the numbers underneath the 6x6 gridlock, the game is over and you will get a score of 0. For example if I guess 40, the numbers underneath the 3x2 gridlock should be 400, and the numbers underneath the 6x6 gridlock should be 1120, whereas if I guess 47, that would not be the correct answer.

The game could be made more difficult by using each of the 3x2 gridlocks separately. A 3x2 gridlock in itself was difficult because you also have to guess numbers underneath it, and guessing those numbers is hard.

Now guess the numbers underneath the 6x6 gridlock. If you guess wrongly, the game will be over and you will get a score of 0, otherwise, you will get a score of 5000, which is the sum of the values underneath the 3x2 gridlock and 6x6 gridlock.

The 6x3 gridlock machine has these 6 grids:

| 3x2Gridlock | 6x6Gridlock |
| :---------: | :---------: |
|     400     |    244    |
|     1120    |    920    |
|     1600    |    800    |
|     2150    |    575    |
|     4225    |    452    |

You can guess the number under each one
