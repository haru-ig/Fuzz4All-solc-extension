pragma solidity ^0.8.0;
contract Multiprecision {
    constructor() {

        bytes memory x = new bytes(4);
        uint i = 0;
        for (uint j = 0; j < 1000; j++) {
            x[i++] = bytes1(j);
        }

    }
}
pragma solidity ^0.8.0;
contract Random {
    constructor(address a) payable {

    }
    function randomFromUintBytes( bytes memory i ) public pure returns ( bytes memory output ) {
        uint iVal = uint(uint128(i));


    }
    function randomFromUint( uint i ) public pure {

    }
}
