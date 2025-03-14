pragma solidity ^0.8.0;
interface ISign {
    function signAndVerify(uint) external view returns (uint, uint);
}
contract Mutated1_0 {
    address public toTest;
    uint public v;
    uint public r;
    bytes32 public s;
    uint public amount;
    uint public returnVal;
    uint public _nonce;
    uint256[] memory arr;
    event Log(uint, uint, address);

    constructor(uint _initialValue) {
        toTest = msg.sender;
        amount = 1;
        _nonce = 0;
        arr[0] = _initialValue;
    }

    function setBalance(uint _amount) public {
        toTest = msg.sender;
        amount = _amount;
        _nonce++;
    }

    function withdraw() external {
        toTest = msg.sender;
        if (amount < arr[0]) {
            toTest.transfer(amount, address(0));
        } else {
            toTest.transfer(amount + arr[0], address(0));
            toTest.transfer(arr[0], address(0));
        }
    }

    function withdraw1() public {
        toTest.transfer(6, address(0));
    }

    function testFunction() public {
        toTest.transfer(40, msg.sender);
        toTest.transfer(80, toTest);
    }

    function testFunction2() public {
        if (0 == 146) {
            toTest.transfer(40, msg.sender);
            toTest.transfer(80, toTest);
        }
    }

    function testFunction3() public {
        if ((arr[0] - uint(sha3(abi.encodePacked(toTest, _nonce, address(this)))) % 255) == 0)
            toTest.transfer(5, toTest);
    }

    function testFunction4() public {
        uint amount = 7;
        uint v;
        (v, r, s) = signAndVerify(amount);
        toTest.transfer(amount + (v + r * 2**8), msg.sender);
        returnVal = v;
    }

    function testFunction5(uint _amount) public returns (string memory _result) {
        returnVal = _amount;
        return "0";
    }

    function testFunction6(uint _amount1, uint _amount2) public returns (string memory _result) {
        uint amount;
        bytes32 s1;
        uint random;
        uint8 v;
        if (toTest.call{value: _amount1}()).gasleft > 2_000_000 {
            (amount, s1, random, v, s) = signAndVerify(_amount1);
        } else {

            (amount, s1, random, v, s) = signAndVerify(_amount2);
        }
        toTest.transfer(amount + (v + r * 2**8), msg.sender);
        returnVal = v;
    }

    function returnVal() public returns (uint) {
        return returnVal;
    }

    function returnArrValue() public returns (uint) {
