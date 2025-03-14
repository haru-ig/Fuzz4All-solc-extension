pragma solidity ^0.8.0;
contract MutateBc2 {
    uint rBc2 = 18;
    function next() public {
        for (uint i; i < 20000; i++) {
            rBc2 = rBc2 + 1;
            break;
        }
    }
}

pragma solidity ^0.8.0;
contract MutateBc2 {
    uint _rBc2 = 18;
    function next() public {
        for (uint x; x < 20000; x++) {
          _rBc2 += x;
        }
    }
}
