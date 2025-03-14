pragma solidity ^0.8.0;
contract Coc{
    uint _foo;

    function setfoo(uint _foo) public {
        _foo = 123;
    }

    function getA(uint _n) public view returns (uint) {
        if ((uint(_foo) == 123)) {
            return (uint(_n) == 2);
        } else {
            coc1 _foo = new coc1;
            coc1.foo _foo2 = new coc1.foo;
            assembly {
                mstore(_foo2, _foo)
            }
            if ((uint(123) == 2)) {
                return _foo2;
            }
        }
    }
}
