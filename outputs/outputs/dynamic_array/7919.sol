pragma solidity ^0.8.0;
contract Test227 {
    address[ ] public addresses;
    function f() public { addresses = new address[](0); }
}

pragma solidity ^0.8.0;
contract Test232 {
    address[ ] public addresses;
    function f() public { addresses = [bytes4(0x100001000)];}
}
