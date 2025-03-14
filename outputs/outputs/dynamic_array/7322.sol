pragma solidity ^0.8.0;
contract C
{
    IERC165 internal nonStandard;
    constructor () {
        nonStandard = IERC165(0x01ffc9a7);
    }

}
