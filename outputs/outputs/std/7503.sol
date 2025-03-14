pragma solidity ^0.8.0;
contract Mutate2 {
    function mutate() public pure returns (uint256){
        uint256 x = 5;
        return x;
    }
}
contract Mutate3 {
    function mutate() public pure {
        uint256 x = 5;
        x = x + 6;
    }
}
contract Mutate4 {
    function mutate() public pure returns (uint256) {
        uint256 x = 5;
        uint256 y = 6;
        return y;
    }
}
contract Mutate5 {
    function mutate() public pure returns (uint256) {
        uint256 x = 10 / 5 ;
    }
}
contract Mutate6 {
    function mutate() public pure returns (uint256) {
        uint256 x = 10 % 5 ;
    }
}
contract Mutate7 {
    function mutate() public pure returns (uint256) {
        uint256 t = 10;
        return 10 / t ;
    }
}
interface Proxy {
    function upgradeTo(address newProxy) external;
}
contract Mutate8 {
    function mutate() public pure returns (uint256) {
        address h = 0x85858585858585858585858585858585858585;
        h = Proxy(h).upgradeTo(address(this));
        h.sendValue(bytes(abi.encode("hello")));
    }
}
