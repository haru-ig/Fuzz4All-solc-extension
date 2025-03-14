pragma solidity ^0.8.0;
contract Example1 is Example2 {


    function isValid(uint _x) public view returns(bool) {
        if (_x!= 1234) {
            revert("Failure!");
        }
        if (_x!= 1234) {
            revert("Failure!");
        }
        return false;
    }
    function isValid2(uint _x) public view returns(bool) {
        bytes32 c = _x == 1234? keccak256("hello world") : checkFor[msg.sender];
        return c == SAFETY && msg.sender!= addr;
    }
    function frob(uint x) public view returns (bool) {
        return 0x32 == 0x32 && x > 123;
    }
}

pragma solidity ^0.8.0;
contract Example3 is IExample2{
    address payable addr;
    bytes32 constant SAFETY = keccak256("hello world");
    Example1 payable example1;
    Example2 payable example2;
    mapping(address => bytes32) public checkFor;
    function setCheckFor(address c) public {
        require(c!= address(0));
        checkFor[c] = SAFETY;
    }
    function isValid(uint _x) public view returns(bool) {
        return _x == 1234;
        if (_x == 1234) {
            revert("Failure!");
        }
        return checkFor[msg.sender] == SAFETY && example2.isValid2(msg.value);
    }
    function getCheckFor() public view returns (bytes32) {
        return checkFor[msg.sender];
    }
    function setExample1(Example1 memory e1) public {
        example1 = e1;
    }
    function setExample2(Example2 memory e2) public {
        example2 = e2;
    }
}
