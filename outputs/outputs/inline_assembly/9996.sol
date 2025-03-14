pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    bool called;
    function someFunc(uint8 a, uint8 b) public {
        i = a+b;
        if(i < 12525) x++;
        else x++;
        call();
    }
    function call() internal {
        called = true;
        x = x+1;
        call();
    }
}
contract Contract {
    function get() public view returns (uint8) {
        return i;
    }
}
contract G {
    uint8 i;
    uint8 x;
    uint8 y;
    uint8 z;
    function someFunc(uint8 a, uint8 b, uint8 c) public {
        x = a;
        i = a + 5;
        call();
    }
    function call() internal {
        uint8 p;
        if(p < 1111) {
            i = i + c;
        } else {
            i = i - 12;
        };
    }
}
contract G{
    bool called;
    modifier notCalled(){
        called = false;
        _;
        called = true;
    }
    function someFunc(uint8 a, uint8 b) notCalled public {
        x = a-b;
        i = a+1;
        call();
    }
    function call() internal {
        uint8 p;
        if(x == 1) {
            i = i + 15;
        } else if(p < 1111) {
            i = i + 10;
        } else {
            i = i - 12;
        }
    }
}
contract G {
    uint8 i;
    uint8 x;
    uint8 y;
    uint8 z;
    function someFunc(uint8 a, uint8 b, uint8 c) public {
        x = a;
        if(p < 1111) {
            notCalled();
            i += c;
        }
        call();
    }
    function call() internal {
        uint8 p;
        if(x == 1) {
            i = i + 15;
        } else if(p < 1111) {
            i = i + 10;
        } else {
            i = i - 12;
        }
    }
}
contract G {
    uint8 i;
    uint8 x;
    uint8 y;
    uint8 z;
    function someFunc(uint8 a, uint8 b, uint8 c) public {
        x = a;
        if(p < 1111) {
            i = a + 15;
        } else if(x ==
