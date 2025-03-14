pragma solidity ^0.8.0;
contract CallFallback {
    bytes3 internal bytes3_;
    address immutable deployer_;
    constructor(address _deployer) { deployer_ = _deployer; }
    function run() public { }
}
contract CallFallback2 {
    bytes3 internal bytes3_;
    constructor(bytes3 _bytes) { bytes3_ = _bytes; }
    function run() public { }
}
