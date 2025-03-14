pragma solidity ^0.8.0;
contract B is A {
    uint x2;
    modifier onlyOwner2 {
        require(msg.sender == owner, "Caller is not the owner");
        x2 = B.x;
        _;
    }
    function setBar() public onlyOwner2 {
        x2++;
    }
    function getBar2() public view returns (uint) {
        return x2;
    }
}
contract C is B {
    uint y2;
    constructor(uint z) {
        x = 10;
        y = z;
        y2=7;
    }
    function setBaz() public onlyOwner {
        B.x = 20;
        B.y = 5;
        y++;
    }
    function getBaz() public view returns(uint) {
        return B.x;
    }
}
contract D is A {
    uint x3;
    uint y3;
    constructor() {
        x3=x;
        y3=y;
    }
    function setFoo3() public {
        x3++;
        y3++;
    }
    function getFoo3() public view returns (uint) {
        return x3;
    }
}
contract E is C {
    constructor(uint z) {
        D.x = z;
    }
    function setBaz3(uint z) public onlyOwner {
        C.x = 20;
        C.y = 1;
        x3 = 10;
        y3 = z;
    }
    function add3() public onlyOwner {
        x3= x3+10;
        y3++;
    }
    function getBaz3() public view returns(uint) {
        return C.x;
    }
}
contract F is E {
    uint x4;
    uint y4;
    constructor() {
        C.x = 20;
        E.x = 10;
    }
    modifier onlyOwner4 {
        require(msg.sender == owner, "Caller is not the owner");
        x4 = C.x;
        y4 = C.y;
        _;
    }
    function setBaz4(uint z) public onlyOwner4 {
        E.x = 1;
        C.x = z;
        E.y = z;
    }
    function getBaz4() public view returns(uint) {
        return E.x;
    }
    function add4() public onlyOwner4 {
        E.x++;
        y4 = C.y++;
    }
}
contract G is C, D, B {
    uint x5;
    uint y5;
    uint z;
    constructor() {
        E.x++;
        B.x++;
        C.x++;
        D.x = 20;
        B.x = 10;
        y = 5;
    }
    modifier only
