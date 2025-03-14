pragma solidity ^0.8.0;
contract Mutate {
    HelloWorld a;
    HelloWorld b;
    uint x0;
    function hello() public {
        a.add(x0, 1);
        a.add(x0, 1);
        a.add(x0, 1);
        a.add(x0, 1);
        a.add(x0, 1);
        a.add(x0, 1);
    }
}
