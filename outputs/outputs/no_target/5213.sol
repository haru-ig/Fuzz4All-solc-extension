pragma solidity ^0.8.0;
contract SimpleExample16 {
    function check(uint256[] storage _storage, bytes memory _data) public {
        bytes20 test;
        uint128 test128;


        _storage[0] = test;
        _storage[1] = test;
        assert(test == _storage[0] && test == _storage[1]);


        _storage.push(0x266d);
        _storage.push(0x266d);
        assert(num == 242);


        _data.push(byte(3));
        _data.push(byte(3));
        assert(contractMemoryLength() == 7);


        bytes16[] storage test2;
        test2[0] = test;
        test2[1] = test;
        assert(test2[0] == test && test2[1] == test);
    }
}
