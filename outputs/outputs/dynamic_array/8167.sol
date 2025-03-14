pragma solidity ^0.8.0;
contract MutatedCrowdsale {
    MutatedCrowdsale public z;
}
contract MutatedFabric {}
contract MutatedCrowdsale {}

pragma solidity ^0.8.0;
contract MutatedDynamicCrowdsaleA {
    MutatedCrowdsale public z;
    MutatedDynamicCrowdsaleA public y;
    MutatedFabric public evm;
}
contract MutatedDynamicCrowdsaleB {
    MutatedCrowdsale public z;
    MutatedFabric public evm;
}
/* The use of dynamic arrays in Solidity is very flexible and it can be used in a number of situations. It is possible to use any combination of dynamic arrays, nested dynamic arrays, mutable types, and immutable types. However, dynamic array storage and ABI decoding should be used with caution because it can affect memory usage significantly.

However, dynamic arrays in Solidity, while flexible and useful, do not offer optimal performance. Use them carefully.

Please write a program which demonstrates memory allocation issues introduced by the use of dynamic arrays in a way which is unlikely to interfere with the operation of the program.
