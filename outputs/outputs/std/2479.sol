pragma solidity ^0.8.0;
contract ChangeMe {
    function functionCallContractAddresses() public pure returns (address) {
        return address(new EquivalentContract());
    }
}
pragma solidity ^0.8.0;
contract Array {
    uint[] array_;
    constructor (uint[] memory v) {
        array_ = v;
    }
}

pragma solidity ^0.8.0;
contract ChangeMe {
    function functionCallArrayAddresses() public pure returns (address) {
        return address(new Array(uint[](27)));
    }
}
