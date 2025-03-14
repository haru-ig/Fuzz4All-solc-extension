pragma solidity ^0.8.0;
contract L25 {
    function modifyCalled() public {



        (bool, bytes memory) = payable(0x973834fd507c4053838c4a23D686B07Ff22817DA).call{value: gasleft() + 5 ether}("");
    }
}
