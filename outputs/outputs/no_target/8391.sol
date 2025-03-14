pragma solidity ^0.8.0;
contract Restrict2 {
    function a() public {
        a = address(new(uint[](1)));
    }
}

pragma solidity ^0.8.0;
contract Restrict3 {
    bool b = false;
    function a() public {
        if (b) {
            function b() public pure {

            a = address(new(uint[](1)));
        }
        else {

        }
    }
}
