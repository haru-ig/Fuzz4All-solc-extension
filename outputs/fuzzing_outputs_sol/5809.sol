pragma solidity ^0.8.0;
contract SemanticallyDifferentExceptions2 {
    int a;
    bool b;
    uint8 c;
    bool f;
    constructor() {
        a = 4;
        b = false;
        c = 3;
        f = true;
    }
    function test() public payable {
        if(a == 3 && b == false && 4 == c && f && false){
            b = true;
        }else{
            b = false;
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticallyDifferentExceptions3 {
    int a;
    bool b;
    uint8 c;
    bool f;
    constructor() {
        a = 4;
        b = false;
        c = 3;
        f = true;
    }
    function test() public payable {
        if (a < 4 && b == false) {
            b = true;
        } else {
            b = false;
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticallyDifferentExceptions4 {
    Fallback f;
    constructor() {

    }
    function test() public {
        f.test();
    }
    receive() external payable {}
}
interface Fallback {
    function test() external payable;
}


pragma solidity ^0.8.0;
contract SemanticallyDifferentExceptions5 {
    Fallback f;
    uint256 c;
    constructor(uint256 _c) {
        c = _c;
    }
    function test() public payable {
        if (_c < 4) {
            f.test();
        }
        if (c < 4) {
            f.test();
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticallyDifferentExceptions6 {
    int a;
    bool b;
    uint8 c;
    bool f;
    constructor() {
        a = 4;
        b = false;
        c = 3;
        f = true;
    }
    function test() public payable {
        if (_c < 4 && b == false && false && false) {
            b = true;
        } else {
            b = false;
        }
    }
}
