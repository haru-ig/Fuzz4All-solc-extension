pragma solidity ^0.8.0;

contract SimpleFallback {
    receive () external payable { }
}
contract InsecureFallback {

    receive () external payable { }
}
contract WithFallback {
    function safeFallback() public pure { }
    function withFallback() public view returns (uint256) { return 3 * 3; }
    function payableFallback() public pure payable { }
}
contract WithMultipleFallbacks {
    function safeFallback() public pure { }
    function withFallback() public view { }
    function payableFallback() public pure payable { }
}
contract FallbackContracts {


    function callWithFallback(address _to) public pure returns (uint256) {
        (uint256, ) = _to.call {
            value: address(this).balance
        } (bytes( abi.encode( 0xddd37c89 ) ) );
    }

    function throwCallWithFallback(address _to) public pure {
        _to.call {
            value: address(this).balance
        } (0xccdddddd );
    }

    function callWithoutFallback(address _to) public pure returns (uint256) {
        _to 0x5536F239f7D799B780daebD1438A84FC3D1946C5;
    }

    function transferWithFallback(address _to) public pure returns (uint256) {
        _to.call.value(address(this).balance) ();
    }
}
