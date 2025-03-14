pragma solidity ^0.8.0;
contract v08 {
    function foo() public {
        mutatedStorage storage a = mutatedStorage(0xf101010101010101());
        uint b;
        (b,) = a.get();
        a.set(0xF101010101010101());
        (b,) = a.get();
    }
}
