pragma solidity ^0.8.0;
contract test61a {
    uint val;
    uint[] x;
    constructor() public {
        x = [1, 2];
        x[1] = 3;
        x[2] = 4;
    }
    function test() public returns (bool) {
        val = x.length;
        return true;
    }
}

pragma solidity ^0.8.0;
contract test61b {
    uint val;
    uint[] x;
    uint[] y;
    constructor() public {
        x = [1, 2];
        x[1] = 3;
        val = 4;
        y = new uint[](4);
        x[2] = 4;
    }
    function test() public returns (bool) {
        y[0] = 1;
        return a;
    }
}

pragma solidity ^0.8.0;
contract test62 {
     bytes32 secret;
     constructor(bytes32 s) public {
        secret = s;
     }
     function compute_hash_of_secret() public returns (bytes32) {


        return address(this).compileCode();
     }
     function run(bytes memory a) public {
        require(compute_hash_of_secret() == a);
     }
}

pragma solidity ^0.8.0;
contract test63 {
    address v;
   contract C {
     function f() public {



       require(address(v).compileCode() == address(this));
       require(false);
     }
   }
}

pragma solidity ^0.8.0;
contract test64 {
    mapping(uint256 => uint256) public constant x;
    constructor() public {
        x[1] = 2;
    }
    function test() public {
        emit (x[2]);
        delete x[1];
    }
}
/*
