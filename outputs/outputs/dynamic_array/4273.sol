pragma solidity ^0.8.0;
contract G5 {
    function a(uint s) pure public {
        bytes memory b = hex"f4f67fafe892b418";
        assembly {
            s := mload(add(add(add(add(12, 0x04f), 0x18), 1), 4), b)
        }
    }
}


/* Please note that Solidity is still in its infancy. However, you can still test your code.
Run your project once with this command "truffle migrate --network develop".
You can find all information on that command from the truffle.com website, located at: https:

If you are still unsure, don't hesitate to contact me. My number is written on the contract's README
