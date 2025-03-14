pragma solidity ^0.8.0;
contract TestMutator2 {
    function set(uint40 x) public {
        x += 1;
    }
}
contract Program_01 is TestMutator {
    function set(uint40 x) public {
        x++;
    }
}
contract Program_02 is TestMutator {
    function set(uint40 x) public {
        x--;
    }
}
contract Program_03 is TestMutator {
    function set(uint40 x) public {
        x^=1;
    }
}
contract Program_04 is TestMutator {
    function set(uint40 x) public {
        require(x<0);
    }
}
