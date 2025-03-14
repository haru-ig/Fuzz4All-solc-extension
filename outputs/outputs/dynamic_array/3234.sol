pragma solidity ^0.8.0;
contract A {
    uint[] elements;
    function add(uint a) public {
        elements.push(a);
    }
}
contract Mod3 is A {
    function modify() public {
        elements[0] = 3;
    }
}
contract Mod4 is A {
    function modify1() public {
        A a;
        a.add(1);
    }
}
contract Mod5 is Mod3, Mod4 {
    function callwithSize() public {
        calltoSize();
    }
}
contract Mod6 is Mod3, Mod4 {
    function modifyArray() public {
        uint[] memory new_elements = new uint[](new uint[](1));
        new_elements[0] = 3;
        new A().add(1);
    }
}
