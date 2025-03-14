pragma solidity ^0.8.0;
import "https://github.com/vigilance91/solidarity/releases/download/v0.1.0/NonFallback.sol";
contract NonFallbackMod {
    function test() public {
        NonFallback nonfallback;
        nonfallback.test();
    }
}
