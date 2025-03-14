pragma solidity ^0.8.0;
contract A {
    uint x;
    constructor() {
        x = 0;
    }
    function setFoo() public {
        x++;
    }
    function addFoo() public {
        x++;
    }
}
contract A {
    uint x;
    uint y;
    uint z;
    constructor() {
        x = 0;
        y = 0;
        z = 0;
    }
    function setFoo() public {
        x++;
        y++;
        z++;
    }
    function getFoo() public view returns (uint) {
        return x + y - z;
    }
}
contract A {
    uint[] foo;
    constructor() {
        foo.push(0);
        foo.push(0);
        foo.push(0);
    }
    function setFoo() public {
        foo[0] += foo[1];
        foo[1] -= foo[2];
        foo[2] *= foo.push();
    }
    function getFoo() public view returns (uint) {
        uint v0 = foo[0];
        uint v1 = foo[1];
        uint v2 = foo.push();
        require(foo[2] == foo.push(), "foo");
        return v0 + v1 - v2;
    }



}
contract A {
    uint[] foo;
    constructor() {
        foo = [0u0, 1u0, 2u0,3];
        foo = foo[0] + foo[3];
        foo = foo.push(foo[1]);
        foo = [foo.push(foo[0]),
                foo.push(foo[2]),
                foo.push(foo[3]),
                foo.push(foo.push(foo[2]))];
    }
    function setFoo() public {
        foo[1] = foo.push();
        foo[2] = foo.push();
        foo[3] = foo.push();

        foo = [foo.push(foo[2]),
                foo.push(foo.push(foo[2])),
                foo.push(foo[1]),
                foo.push(foo.push(foo[2]))];
    }
    function getFoo() public view returns (uint) {
        uint v0 = foo[0];
        uint v1 = foo.push();
        uint v2 = foo.push();
        uint v3 = foo.push();
        require(foo[2] == foo.push(), "foo");
        return v0 + v1 + v2 + v3;
    }
