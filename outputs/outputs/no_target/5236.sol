pragma solidity ^0.8.0;
contract SimpleExample21 {
    uint256 public num;
    constructor() public {
        num = 1 > 2 * 3? 1 : 3 * num;
    }
}

pragma solidity ^0.8.0;
contract SimpleExample22 {
    function example() public pure returns(uint256) {
        return ( uint256( uint160(1) ) == 1 );
    }
}

pragma solidity ^0.8.0;
contract SimpleExample23 {
    function example() public pure returns (uint8) {
        SimpleExample22.example();
        return uint8(uint160(0));
    }
}
