pragma solidity ^0.8.0;
contract MyContract {

    modifierWithParam mWithParam(uint x) public view {
        if (x == 0) {
            return;
        }
        return;
    }
    function f(uint x)  public view returns(uint) {
        return mWithParam(x + 1);
    }
    function g(uint x) public view returns (uint) {
        return mWithParam(x - 1);
    }
}
pragma solidity ^0.6.0;
import "./MyContract.sol";
import "./modifierWithParam.sol";
contract ModifiersWithParamExample {
    function f() public view returns(uint, uint) {
        MyContract c = MyContract(11-MyContract(1));
        uint x = c.f();
        return (
            uint(x),
            uint(c.g(1))
        );
    }
}
contract ModifiersWithParamExample2 {
    modifierWithParam m1WithParam(uint x) public view {
        if (x == 0) {
            return;
        }
        return;
    }
    modifierWithParam m2WithParam(uint x) public view {
        if (x == 1) {
            return;
        }
        return;
    }
    function f() public view returns(uint) {
        uint x = MyContract((11 - MyContract(1)).f());
        return (
            MyContract(x.f()).g()
        );
    }
}
contract EmptyModifier2 {
    modifierWithParam m {return; }
    function empty1() public view returns(uint) {
        uint x = m.f(2 * 6 / 2);
        return uint(x);
    }
    function empty2() public  returns() {
        uint x = (11 + m2WithParam(2)).g();
        return uint(x);
    }
}
contract ModifiersTest {
    function empty() public view returns(uint) {
        uint x = 11 + 1;
        return (x + x + 2 * 3 + m1WithParam(1)).f();
    }
}
contract MixedModernityExample {
    modifier1 m1 { return; }
    modifier2 m2 { return; }
    modifier3 m3 { return; }
    modifier4 m4 { return; }
    modifier5 m5 { return; }
    modifier6 m6 { return; }
    modifier7 m7 { return; }
    modifier8 m8 { return; }
    modifier9 m9 { return; }
    modifier10 m1
