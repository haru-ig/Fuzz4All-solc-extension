pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint mut counter) internal view returns (uint, bool) {
        counter++;
        return (counter, true);
    }
}

pragma solidity ^0.8.0;
contract Mutator {
    function shouldBe(uint _counter1, uint _counter2) internal view returns (uint _counter3, bool _isMutated) {
        _counter3 = _counter1 + _counter2;
        _isMutated = true;
        return (_counter3, _isMutated);
    }
}
