pragma solidity ^0.8.0;
contract R3 {
    uint16[] arr;
    function f() public {
        arr.push(0);
        uint16 a = arr[0];
    }
}

pragma solidity ^0.8.0;
contract R4 {
    address[2] arr;
    function f() public {
        arr[0] = address(this);
        uint16 a = arr[1];
    }
}
