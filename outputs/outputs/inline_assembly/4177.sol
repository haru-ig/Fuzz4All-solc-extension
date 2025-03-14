pragma solidity ^0.8.0;
contract Mutators2 {
    function set (uint a) public returns (uint) {
        a = 10;
        if(a>10) {
            uint a = 10;
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Mutators3 {
    function set (uint a) public returns (uint) {
        a = 10;
        if(a==10) {
            a = 10;
            uint a = 10;
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Mutators4 {
    function set (uint a) public returns (uint) {
        a = 10;
        if(a==10) {
            a = 10;
            a = 10;
        } else {
            a = 10;
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Mutators5 {
    function increment (uint a) public returns (uint) {
        a = 10;
        while(a<=10) {
            a += 1;
        }
        return a;
    }
}
