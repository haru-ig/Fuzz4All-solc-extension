pragma solidity ^0.8.0;
contract M9a {
    uint b;
    uint private totalSupply = 1;
    constructor() {
        b = 1;
    }
    function totalSupply() public view returns(uint) {
        return totalSupply;
    }
    function modify() public {
        b = b+b;
    }
    function double() public {
        b = b+b;
    }

}
contract M9b {
    uint constant constant_a = 1000;
    function callModify() public {
        uint b = constant_a;
        modify();
        while(b > 0) {b=b-(2*b);}
    }
    function callDouble() public {
        double();
    }
    function modify() public {
        totalSupply+=1;
    }
    function double() public {
        totalSupply += 2;
    }
    function divide() public {
        totalSupply-=2;
    }
}
