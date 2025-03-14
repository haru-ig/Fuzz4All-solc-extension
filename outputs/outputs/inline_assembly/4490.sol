pragma solidity ^0.8.0;
contract Emulator6 {
    uint x; uint y;
    function init() public {
        uint w;
        function init () internal{
            if (0) {
                w = uint(sqrt(x));
            }
            else {
                w = sqrt(x);
            }
            y = x-uint(w);
        }
        init();
        x -= y;
    }
    function write() public {}
}
