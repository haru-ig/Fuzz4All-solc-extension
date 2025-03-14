pragma solidity ^0.8.0;
interface C {
     function f() public;
}
contract G {
     function f() public { }
}
contract C {
    function f() public {
            contract G is C {
                  function f() public { }
            }
            G g;
    }
}
contract Test {
    function f(uint _z, C _z_) public {
        _z_.f();
        _z_.change(_z_);
    }
    function f0(uint _z, G _z_) public {
        _z_.f();
        _z_.change(_z_);
    }
    function f1(uint _z, uint _z_) public {
        _z_.change(_z);
        _z_.change(_z_);
    }
    function f2(uint _z, uint _z_, uint _z_) public {
        _z_.change(_z);
        _z_.change(_z);
        _z_.change(_z_);
    }
    function f3(uint _z, uint _z_, uint _z_, uint _z_) public {
        _z_.change(_z);
        _z_.change(_z);
        _z_.change(_z);
        _z_.change(_z_);
    }
}
