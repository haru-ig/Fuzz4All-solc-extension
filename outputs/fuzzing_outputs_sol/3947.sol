pragma solidity ^0.8.0;
contract Example9 {
    function setAddress() public {
        Example17(0x0).setAddress();
    }
}
contract Example16 {
    function setAddress() public {
        Example9().setAddress();
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function setAddress() public {
        Example9(address(0x9)).setAddress();
    }
}
