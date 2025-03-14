pragma solidity ^0.8.0;
contract Mutator2 {
uint256 x;
uint256 y = 1;
constructor() public {
x = 3;
}
function mutate(uint256 _x) public {
y++;
x += _x+5;
}
}

pragma solidity ^0.8.0;
contract Mutator1 {
    mapping (uint => uint) public x;
    uint256 y = 1;
    constructor() public {
        x[3] = 5;
    }
    function mutate(uint256 _x) public {
        x[3] += 5*_x;
        y -= 1;
    }
}
/* You should note by how inline assembly can be used to mutate variables (mutator 1). The use of inline assembly is also known as mutator programming, although it is far more complex and likely inefficient than the more common usage of functions or libraries for manipulating contract variables and data. To give you some context for the mutation examples above, consider a simple example: we have a value x = 5, and we want y to be added to it. If we try to do this directly through Solidity, the assignment operator x++ will not affect the outcome, since 5 is still 5. We can solve this problem by using inline assembly.

One way to think about this mutation example involves a number of other operations, including: add x to 3 (which will set x = 8), multiply 8 by 2 (which will set y = 12), compute the difference (8 - 5) and subtract 1 from y (which will set y = 7). If you recall earlier that inline assembly operates at a very low-level, we can think about inline assembly like a "calculator". To think in terms of a "calculator" you will need to add or multiply operators, binary addition and binary subtraction, etc. Once we apply this math, we get our desired value. This is exactly how inline assembly works.

You can add another simple example of what inline assembly can actually do. Consider a different mutation for this example again. Consider this time that you want to subtract 1 from y. You already know that subtracting a value from zero will always result in 0 (although technically it can result in negative numbers, but we will ignore the behavior of this for now). If we add 1 to zero, which will be -1, we can subtract 1 from -1 to result in 0. This can easily be done through assembly: the operator - is used when computing the result
