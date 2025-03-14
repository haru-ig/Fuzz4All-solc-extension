pragma solidity ^0.8.0;
contract InlineAssembly3{
    uint storedValue;
    mapping(address => uint) storedValue2;
    event Log(int);

    function test() public {
        storedValue += 77;
        emit Log(storedValue);

        uint8 b = 3;

        assembly {
            storedValue2[msg.sender] := storedValue + 5555 * b
        }
        require(storedValue == storedValue2[msg.sender]);
    }
}
