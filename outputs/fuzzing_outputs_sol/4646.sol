pragma solidity ^0.8.0;
contract Mutator {
    Mutator inner;

    function init(uint _val, Mutator _inner) public {
        inner = _inner;
    }
    function shouldBe(uint) public returns(bool) {
        inner.inner.shouldBe(6);
        return inner.should(3);
    }
    function should(uint _value) public view returns(bool) {
        return inner.inner.shouldBe(_value);
    }
}
