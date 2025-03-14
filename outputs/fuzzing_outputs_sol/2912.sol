pragma solidity ^0.8.0;
contract Bar {
    receive () payable onlyFallback {}
}
contract Foo {
    fallback () payable {}
}
contract Caller with Foo {

    fallback () external payable {}

    function callFunction() public {

        emit Log('Executed fallback function');
    }
}

pragma solidity ^0.8.0;
contract FallbackCaller {

    address internal constant caller = 0x1234567890123456789012345678901234567890;
    Caller internal dummyCaller;

    constructor (address dummyAddress) {
        require(
            address(caller) == address(this),
            'Caller contract address is a contract'
        );
        dummyCaller = Caller(dummyAddress);
    }

    function execute() public {

        dummyCaller.callFunction();
    }
}
