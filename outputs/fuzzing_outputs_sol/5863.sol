pragma solidity ^0.8.0;
contract MovedSemanticsNoFallback {
    address x;
    function test() public {
        x = x;
        x = x;
        Fallback();
    }
    function Fallback() public {
        x = msg.sender;
        x = msg.sender;
    }
}
contract MovedSemanticsNoFallback {
    address x;

    function test() public {
        x = x;
        Fallback();
    }

    function Fallback() public payable {}
}
contract MovedSemanticsNoFallback {
    address x;

    function test() public {
        x = x;
        Fallback();
    }

    function Fallback() internal {}
}
