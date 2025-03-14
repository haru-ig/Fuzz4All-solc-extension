pragma solidity ^0.8.0;
contract User {
    event MyEvent(uint indexed value);

    constructor(interface16 _i) {}
    constructor(interface16 _i, uint _x) public {}
    constructor(uint _x) public constructor(interface15(_x)) {}
    constructor(uint indexed _x) public constructor(interface15(_x)) {}
    constructor(uint160 _x) public constructor(interface15(uint160(_x)))
    constructor(uint160 _x, uint indexed _y) public constructor(interface15(uint160(_x), uint()))
    constructor(uint indexed _x, uint _y) public constructor(interface15(_x, _y))
    constructor() public constructor(interface14()) {}

    function testEvent() public {
        require(_x > _y);
        emit MyEvent(_y);
        require(_x > _y, "test1");
        require(_x >= uint160(1), "test2");
    }

    function testEvent2() public {
        require(uint160(_x) > int160(uint(_y)));
    }
}
