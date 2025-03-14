pragma solidity ^0.8.0;
contract LowLevelCaller {
    uint public x = 2;
    function lowLevel() public returns (uint) {
        x *= 2;
        x -= 3;
        return x;
    }
}
contract FallbackCaller {
    function () external payable {}
}


pragma solidity ^0.8.0;
contract FallbackCaller {
    function () external payable {}
    function getHighLevel() public {
        println(uint(Caller().highLevel()));
    }
    function getLowLevel() public {
        println(uint(Caller().lowLevel()));
    }
}
