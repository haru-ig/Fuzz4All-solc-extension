pragma solidity ^0.8.0;
<fim_middle>pragma experimental ABIEncoderV2;
contract S0 {
    i x;

    constructor(i _x) {
        x = _x;
    }
}



pragma solidity ^0.8.4;

import './Owned.sol';

contract Owned is OwnedInterface {
    uint constant MNEMONIC = 0x0000;
}



pragma solidity ^0.8.4;

import './Owned.sol';

contract OwnedInterface {
    uint constant public MNEMONIC = 0x0000;

    function owner() external returns (address);
}
