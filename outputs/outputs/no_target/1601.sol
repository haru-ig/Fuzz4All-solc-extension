pragma solidity ^0.8.0;
contract Semantic0005 {
    uint[] myArrayUint;
    function add() public {
        myArrayUint.push(uint(1));
        myArrayUint.push(uint(2));
    }
    function add2() public {
        myArrayUint.push(uint8(1));
        myArrayUint.push(uint8(2));
    }
    function add3() public {
        myArrayUint.push(uint256(1));
        myArrayUint.push(uint256(2));
    }
    function pushUint160() public {

        myArrayUint = [uint160(myArrayUint), uint160(uint(1)), uint160(uint(2))];
    }
    function pushUint128() public {

        myArrayUint = [uint128(myArrayUint), uint128(uint(1)), uint128(uint(2))];
    }
}
