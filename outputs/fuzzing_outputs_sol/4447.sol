pragma solidity ^0.8.0;
interface A is FallbackCaller {}
contract B is A {
    uint256 constant x = 1;
    function a() public pure {
        require(msg.msg.value == x);
    }
}

pragma solidity ^0.8.0;
interface B is FallbackCaller {
    function a() public pure {
        B call().get();
        require(get() == x);
    }
}
