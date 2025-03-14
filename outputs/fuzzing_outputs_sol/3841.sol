pragma solidity ^0.8.0;
contract Example4 {
    function __fallback(bytes memory unused) public pure returns (bytes memory) {
        return EtherTo(address(this)).sendValue(address(this), 205036021983800000000000000000000020);
    }
}
