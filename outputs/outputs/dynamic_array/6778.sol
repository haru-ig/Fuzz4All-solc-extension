pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_type_encoding {
    bytes8 value;
    function set(address _dest, bytes8[] memory _list) public {
        uint1 a;
        (a, value) = (uint1)(_dest, _list);
    }
}

 pragma solidity ^0.8.0;

 contract T117 {
    event E(uint[] a, uint[] b);
    function set(uint[] memory v) public {
        E(v, v[0:1]);
        emit E(v, v[0:2]);
    }
    function f() public {
        set(uint[](0, uint(0), uint(1), uint(0)));
    }
  }


pragma solidity ^0.8.0;


   contract T36 {
    uint[] private a;
    constructor() {
        a[0] = 3;
    }
    function get() public view returns (uint[] memory) { return a; }
    function set(uint[] memory v) public { a = v; }
  }

pragma solidity ^0.8.0;

contract T1 {
    uint public x;
    constructor() public {
        uint w = 0;
        x = w + 1;
        x -= w;
        x *= w + 1;
        x /= w - 1;
        x %= 2;
        x <<= 8;
        x >>= 0;
    }
}


pragma solidity ^0.8.0;


   contract T2 {
    uint[] private a;
    constructor() {
        a[0] = 3;
    }
    function f() public returns (uint[] memory) {
        a[1] = a[0][0];
        return a;
    }
}
