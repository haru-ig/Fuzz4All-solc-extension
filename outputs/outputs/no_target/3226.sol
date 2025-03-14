pragma solidity ^0.8.0;
contract eight {
    function b() public pure returns(uint8)
    {
        uint8 x1 = 20;
        x1 += 23;
        return x1;
    }
}

pragma solidity ^0.8.0;
contract nine {
    constructor() public

     {
      uint8 x1 = 34;
      x1 -= 10;
      require (x1 == 33, "Invalid answer");
    }
}

pragma solidity ^0.8.0;
contract ten {
    constructor() public

    {
      uint8 x1 = 33;
      x1 -= 10;
      uint8 x2 = 23;
      x2 -= -20;
      require ((x1 == 30) && (x2 == 23), "Invalid answer");
    }
}
