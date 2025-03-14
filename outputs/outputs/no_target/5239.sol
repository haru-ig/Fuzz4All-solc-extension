pragma solidity ^0.8.0;
contract SimpleExample21 {
    constructor() public {
        num = num > 4000000000000? uint256(uint160(num/10000000000000000000000000)): ( num > 400000000000?uint256(uint160(100000000000000)): num );
    }
    uint256 public num = uint256(uint160(0x6667));
}

pragma solidity ^0.8.0;
contract SimpleExample22 {
    uint128 intMaxOrMin = uint128(-1 - uint128(1)/uint128(10) ) > int128(uint136(uint160(1))) ;
    constructor() public {
        intMaxOrMin = (0xFFFFFFFFF < 0xFFFFFFFFF )? true : (intMaxOrMin) ;
        boolean result = uint128(uint160(1)) == uint128(1) && (uint128(uint160(1)) < uint128(1)) ;
    }
}

pragma solidity ^0.8.0;
contract SimpleExample23 {
    bytes32 public log;
    bytes32 public log2;
    constructor() public {
        num = uint256(num) * uint256(num) > uint256(uint8(0xFF))? uint256(uint160(1)) : num ;
    }
    uint256 public num = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90AEAA6A47C2CB1CA12131ED1C7E8ECF33616C66ED55BBDCE1F985;
}
contract Test {
    function getOneShot(uint160 x) public pure {
        require(x == 50 || x == 1000, "Wrong number");
    }
    constructor () public {
         getOneShot(1000);
    }
}
