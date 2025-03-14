pragma solidity ^0.8.0;
contract mutator86 {
    uint256 g = 12;
    uint256 p = 49;
    constructor() {
      p++;        p--;
      p = p + g;
      p = p + (g * p);
      p = p + (g + g + g);
      p = p + (g - g);
      p = p + (g ^ p);
      p = p + (g % g);
      p = p + (p ^ g);
      p = p + (g << g);
      p = p + (g >>> g);
    } }
