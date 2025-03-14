pragma solidity ^0.8.0;
pragma experimental SMTChecker;
contract C {
    struct S {
        address a;
        uint counter;
    }
    mapping(address => C.S) myMap;



    function g(C.S memory s) public returns (bool) {
        s.a.send(s.counter + 1);
        myMap[s.a].counter = s.counter + 1;
        return true;
    }

    fallback function () external payable {
        if (msg.value == 1 ether) g(myMap[msg.sender]);
    }
}
