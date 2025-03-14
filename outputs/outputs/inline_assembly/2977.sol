pragma solidity ^0.8.0;
contract A {
    C c;

    constructor(address _contract) public {
        c = C(_contract);
    }
    function setX(uint _x) public {
        c.setX(_x);
    }
    function getX() public view returns (uint) {
        return c.getX();
    }
}
contract B is A {
    C c;
    constructor(address _contract) public A (_contract) {
        c = C(_contract);
    }
    function getX() public view returns (uint) {
        return c.getX() + 1;
    }
}
