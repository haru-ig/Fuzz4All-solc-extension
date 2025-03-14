pragma solidity ^0.8.0;
uint public a;
contract C {
  uint public a;
  constructor() {
    a = 0;
    }
  function checkA() public view returns (uint) {
    return a;
  }
}
/* The contract below implements a Solidity language contract which implements the BFGGA algorithm for solving the optimization problem of minimizing a function on the interval [0,1].
The optimization objective is to find a suitable starting value for the function of interest, given that all values in the interval were taken to be of equal probability; the function must then be asymptotically minimized. The algorithm uses the following steps:

Initial value:  Random, chosen by one of the following mechanisms: uniform distribution, normal distribution
Iterations (10 steps):  For each iteration, a uniform-distributed random variable [0,1) undergoes a transformation from its normal distribution to its uniform distribution uniform(-1,1)\
