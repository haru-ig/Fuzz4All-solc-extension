pragma solidity ^0.8.0;
contract Mutate0016 {
    address _address;
    constructor (uint _num, address _init) public {
        _address = _init;
    }
}

pragma solidity ^0.8.0;
contract Mutate0017 {
    address private _address;
    constructor (uint _n) public {
        _address = address(address(uint160(uint(_n)/2)));
    }
    modifier onlyAddress(address _addr) {
        require(_addr!= 0x000000000000000000000000000000000000000000000000000000000000000);
        _;
    }
}
