pragma solidity ^0.8.0;
contract L9 {
    uint x;
    function modify() public {
        x -= 2 ether;
    }
}

pragma solidity ^0.8.0;
contract L8 {
    uint x;
    function modify() public {
        x += 100 ether;
        x -= 10 ether;
        bytes memory ret;
        L11 l11;
        L9 l9;
        l11.modify{value:100 ether,data:""}(ret);
        l9.modify{value:10 ether,data:""}(ret);
        _;
    }
}
