pragma solidity ^0.8.0;
contract Mutators5 {
    function decrement (uint b) external returns (uint) {
        b = 10;
        while(true) {
            b -= 1;
            if(b>=1) break;
        }
        return b;
    }
}


pragma solidity ^0.8.0;
contract Mutators4 {
    uint constant X = 10;
    function increment () public view returns (uint) {
        uint a = X;
        while(true) {
            a += 1;
            if(a>=X) break;
        }
        return a;
    }
}


pragma solidity ^0.8.0;
contract Mutators3 {
    uint constant X = 10;
    function increase (address addresse) public {
        addresse = address(0);
        uint a = X;
        while(true) {
            a += 1;
            if(a>=X) break;
        }
    }
}


pragma solidity ^0.8.0;
contract Mutators2 {
    uint constant X = 10;
    function increase (address a) public view returns (uint) {
        a = address(0);
        uint a = X;
        while(true) {
            a += 1;
            if(a>=X) break;
        }
        return a;
    }
}


pragma solidity ^0.8.0;
contract Mutators {
    uint constant X = 10;
    function increment () external view returns (uint) {
        uint a = X;
        while(true) {
            a += 1;
            if(a<=X) break;
        }
        return a;
    }
}


pragma solidity ^0.8.0;
contract Decrementer {
    uint constant X = 10;
    function decrement (uint b) external view returns (uint) {
        uint a;
        while(true) {
            b -= 1;
            if(b<=0) return 1;
            a = X;
        }
    }
}
