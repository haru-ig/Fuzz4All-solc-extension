pragma solidity ^0.8.0;
interface Caller1 {
    function fallback();
}

contract TestCaller {
    function testCaller1() public {
        address _caller = address(this);
        Caller1 callers = Caller1(address(this));

        Caller1(address(this)).fallback();
        _caller.delegatecall(
            abi.encodeWithSignature(
                "fallback()",
                1 ether
            )
        );

        callers.fallback();
        _caller.delegatecall(
            abi.encodeWithSignature(
                "fallback()",
                1 ether
            )
        );
    }

    function testCaller2() public {
        address _caller = address(this);
        Caller2 callers = Caller2(address(this));

        _caller.delegatecall(
            abi.encodeWithSignature(
                "fallback()",
                1 ether
            )
        );
        callers.fallback();
    }
}
