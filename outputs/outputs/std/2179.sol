pragma solidity ^0.8.0;
contract A is A {
    function setFoo() public {
        foo = bool(uint(foo) == 0);
    }
    function setBar(uint _bar) public {
        bar = _bar;
    }
    function getFoo() public view returns (uint) {
        return bool(uint(foo) == 0? 0 : foo);
    }
    function getBar() public view returns (uint) {
        return bar;
    }
}

pragma solidity ^0.8.0;
contract A is A {
    function setFoo() public { Foo = bool(uint(Foo) == 0); }
    function setBar(uint _bar) public { Bar = _bar; }
    function getFoo() public view returns (uint) {
        return bool(uint(Foo) == 0? 0 : Foo);
    }
    function getBar() public view returns (uint) {
        return Bar;
    }
}

pragma solidity ^0.8.0;
contract A {
    function setFoo(uint _foo) public {
        if(uint(Foo) == 0) Foo = bool(_foo);
    }
    function setBar(uint _bar) public {
        if (uint(bar) == 0) Bar = _bar;
    }
    function getFoo() public view returns (uint) {
        return bool(uint(Foo) == 0? 0 : Foo);
    }
    function getBar() public view returns (uint) {
        return uint(Bar);
    }
}
