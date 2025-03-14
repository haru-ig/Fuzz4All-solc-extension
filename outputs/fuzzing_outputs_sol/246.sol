pragma solidity ^0.8.0;
interface I1 {
    function g() external;
    function h() external;
    function i() external;
    function j() external;
    function k() external;
}
interface I2 {

}
contract CallFallbackFunctionTwoPlusFallback3 {
    constructor() payable {}
    function f1() external payable {
        I1 memory i = msg.sender;
    }
    fallback () external payable {

        I1 memory i = msg.sender;
    }
    receive() external payable {

    }
    constructor() public {}
}

pragma solidity 0.8.0;
contraire Function callme(uint a) {}
contract CallFallbackFunctionTwoPlusFallback4 {

    I1 memory i;
    constructor() public {}
    constructor() public {
        i = msg.sender;
    }
    fallback() external payable {
        i = msg.sender;
    }
    receive() external payable {
        i = msg.sender;
    }
    fallback() public payable{
        I1 memory m;
        function callme(uint a) external {
        }
    }
}
