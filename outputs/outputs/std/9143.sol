pragma solidity ^0.8.0;
contract ImmutableArrayContract {
    uint256 public _value;
    function getValueInternal() private view returns (uint256) {
        return _value;
    }
    function setValue(uint256 value) public {
        _value = value;
    }
    function getValue() private view returns (uint256) {
        return _value;
    }
}

pragma solidity >=0.5.0 <0.6.0;
contract SimpleComparisonContract {
    address public c1;
    address public c2;
    function simpleCompare(bool result, require(result, "The program should not be called twice"));
    function compare(bool result, address c) public view;
    function testWithAddressInputs(address c1_, address c2_) public view {

        comparison (c1_, c2_);
        byte result;

        result = comparison(c1_, c2_);
        require(result == true, "A valid result should be returned");
    }

    function comparison(address a1, address a2) internal view returns (bool) {
        require(a1 == a2, "Addresses are different");
        return true;
    }
}
contract EfficientComparisonContract is SimpleComparisonContract {



    address public c1;
    address public c2;
    function increase(uint256 value, address adr) public {
        c1.increase(value, c2);
    }
    function testWithAddressInputs(
       address c1_,
       address c2_
    ) public view returns (address r, uint256 s, uint r2, uint s2, bool result) {
        uint256 r1 = c1.getValue();
        uint256 s1 = c2.getValue();
        c1.increment();
        c2.increment();
        r = c1.getValue();
        s = c2.getValue();
        r2 = c1_.getValue();
        s2 = c2_.getValue();
        result = c1.getValue() == c2_.getValue();
    }
}
