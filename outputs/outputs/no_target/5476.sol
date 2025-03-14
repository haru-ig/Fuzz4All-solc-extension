pragma solidity ^0.8.0;
contract O {
    uint public v;
    uint8 public x;

    function bar() public pure returns (uint) {


        require(v >= 1);
        return 0x123456789048760000000142113018141201;
    }
}

pragma solidity ^0.8.0;
contract O {
    uint public v;

    function bar() public pure returns (uint) {
        require(v >= 0.1);
        return 0x123456789048760000000142113018141201;
    }
}
