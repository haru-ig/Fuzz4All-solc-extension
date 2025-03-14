pragma solidity ^0.8.0;
contract Caller {
    bytes32[] public numbers;
    bytes32 firstNum;
    bytes32 secondNum;
    function Caller() {
        numbers.push("1");
        numbers.push("2");
        numbers.push("3");
        firstNum = "first value";
        secondNum = "second value";
    }
    function () payable external {
        require(msg.value >= 0.1 ether);
        require(msg.value > 1 ether);
        if (msg.value <= 2 ether) {

        } else {
            try myContract(firstNum).getData() {
                uint value = 0;
                (firstNum, secondNum) = myContract(firstNum).getData();
            } catch Error(string memory reason) {
                (firstNum, secondNum) = myContract(firstNum).getData();
                revert(reason);
            }
        }
    }
    function GetNums() public view returns(bytes32[]) {
        bytes32[] memory newNums = new bytes32[](numbers.length);
        for(uint i=0; i<numbers.length; i++){
            bytes32 _num = numbers[i];
            newNums[i] = _num;
        }
        return newNums;
    }
}
