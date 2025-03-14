pragma solidity ^0.8.0;
 interface FallbackInterface {
    function fallback() external payable;
}
 contract CallerWithFallback {
    function sendAndReturn() public payable {
        bytes memory data = abi.encodeWithSignature("fallback()");

        require(msg.value > gasprice() * 1 ether);

        (bool success, ) = payable(address(this)).call{value: msg.value}{data};
        require(success);
    }


    function gasprice() public view returns (uint);
}
