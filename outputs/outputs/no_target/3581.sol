pragma solidity ^0.8.0;
contract m221 {
    uint public s;
    uint public i;
    constructor() public {
        s = 3;
        (s, i) = (1, int(3));
    }
}

pragma solidity ^0.8.0;
contract m222 {
    uint public s;
    constructor() public {
      s = 30;
    }
    uint8 public g;
    function f() public {
      s = 31;
      g = 3;
    }
}
