pragma solidity ^0.8.0;
contract ComplexFallback {
    mapping (uint => uint) _value;
    uint8 constant LEN = 2;
    address constant TO = 0xF062aD8900Fa127b593Ad816d137565ff1b54330;


    function externalNonPayableFunction() public pure {
        require(false);
    }

    function externalPayableFunction() public pure payable {}


    function externalReceiveFunction() public pure {
        return uint(keccak256(abi.encodePacked(uint16(1337)))));
    }

    function fallback() public pure {
        _value[msg.sender] = 1337;
    }

    function payableFallback() public pure {
        require(false);
    }

    function nonPayableFallback() public pure {
        require(false);
    }


    function nonPayableReturn() public {
        require(msg.sender == address(this), "msg.sender must be address(this)");
        assembly {
            let returnValue := mload(0x40)


            calldatacopy(0, 0, calldatasize)

            let (success, returndata) = call(
                value := 1,
               gas := 0,
                returndatasize := returndatasize,
                destination := 0,
