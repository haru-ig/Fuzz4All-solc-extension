pragma solidity ^0.8.0;
contract Update is Mutate {
    function update() public {
        mut uint num = 42;
        num += 42;
    }
}
