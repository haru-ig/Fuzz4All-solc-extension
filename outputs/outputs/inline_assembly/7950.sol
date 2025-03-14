pragma solidity ^0.8.0;
contract L76MultipleReturn2 {
    uint _x;
    uint _y;
    constructor () {
        uint t;
        address x;
        uint y;

        return (_x, _y);
    }
}

pragma solidity ^0.8.0;
contract L76MultipleReturn2 {
    uint _x;
    uint _y;
    function sneaky() public returns (uint, uint) {
        _x;
        return (_y, _x);
    }
}

pragma solidity ^0.8.0;
contract L76MultipleReturn2 {
    uint _x;
    uint _y;
    function sneaky() public returns (address, address) {
        address x;
        address y;
        return (x, y);
    }

    function main1() public {
        L76MultipleReturn2 contractToCall = new L76MultipleReturn2();
        (uint, uint) returnVal = contractToCall.sneaky();
        assembly {
            require returnVal == 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000800000000000
