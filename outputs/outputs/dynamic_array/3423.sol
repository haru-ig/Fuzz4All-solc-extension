pragma solidity ^0.8.0;
contract D {
    uint[] a;
    uint i;
    uint j;
    constructor() {
        i++;
        j;
        a = new uint[](i);
    }
    function pushTest() public {
        i++;
        j++;
        a = new uint[](i);
    }
}

pragma solidity ^0.8.0;
contract X {
    uint public constant X = 1e8;
}
contract Z is X {
    uint public constant X = 1e9;
}
contract AA is Z {
    uint public constant X = 1e10;
}

pragma solidity ^0.8.0;
contract Y {
    bytes32 x;

    function f() public {
      x = x + bytes32(1);
    }
}
