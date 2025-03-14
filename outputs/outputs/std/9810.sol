pragma solidity ^0.8.0;
contract Constant_Example {
    uint public constant bar1 = 4;
    uint public constant bar2 = 5;
    uint public constant baz1 = bar1 + bar2;
    uint public constant baz2 = constant_sum1 + constant_sum2;
    uint constant constant_sum1 = bar1 + bar2 + bar3 + bar4 + bar5 + bar6 + bar7;
    uint constant constant_sum2 = bar1 - bar5 + bar2 + bar6 - bar3;
}
pragma solidity ^0.8.0;
contract Constant_Example {
    uint public constant bar1 = 107 * (10 ** 18);
    uint public constant bar2 = 107 * (10 ** 18);
}
