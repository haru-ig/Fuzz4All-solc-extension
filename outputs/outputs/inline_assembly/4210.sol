pragma solidity ^0.8.0;
contract Mutators11 {
    uint X = 20;
    uint V;
    constructor() external {
        V = X + 1;
    }
    function increment (uint W) public {
        if (W <= V) V += W;
    }
}
contract Mutators12 {

    uint V;

    constructor () external {
      V = 5;
    }

    function increment (uint W) external {
       if (W <= V) V += W;
    }
}
