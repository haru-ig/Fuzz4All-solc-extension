pragma solidity ^0.8.0;
contract P2 {
    uint32 iv;
    constructor(uint32 _iv) public {

        iv = _iv;
    }
}

pragma solidity ^0.8.0;
contract P2 {
    uint32 iv;
    constructor(uint32 _iv) public {

        iv = uint32(uint80(_iv));
    }
}


pragma solidity ^0.8.0;
contract P2 {
    uint32 iv;
    constructor(uint32 _iv) public {
        iv = _iv;
        sqrt(uint32(42));
    }

    function sqrt (uint32 x) private pure returns (uint32 y) {

      y = mantissa^(1./2.);
      for(uint32 i = 4; (x/=i) > 2; i <<= 1) {
        if(i!= 4 && y < x/i && (y+i) <= x)
          y = y+i;
      }
    }
}


pragma solidity ^0.8.0;
contract P2 {
    uint32 iv;
    constructor(uint32 _iv) public {
        iv = _iv;
        log(uint32(42));
    }
    function log(uint32 x) private pure returns (uint32 y) {

      y = x^(mantissa/2.);
      for(uint32 i = 6; i < 21; i <<= 1) {
        if(i < 21 && y < x/i && (y+i) <= x)
          y = y+i;
      }
    }
}


pragma solidity ^0.8.0;
contract P2 {
  uint32 iv;
  constructor(uint32 _iv) public {
    iv = _iv;
    exp(uint32(42));
  }

  function exp(uint32 x) private pure returns (uint32 y) {
    y = 0;
    for(uint3
