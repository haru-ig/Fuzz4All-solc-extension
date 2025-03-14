pragma solidity ^0.8.0;
address owner;
struct IsolateData {
    bytes32[] public data;
}


pragma solidity >=0.8.9 <0.9.0;
contract Inheritance {

}
address owner;

struct Complex{
    IsolateData myData;
}
contract ComplexInheritance: Inheritance {
    uint public balance;

    function increaseBalance(uint x) {
        Complex memory data = Complex(isolateData());
        IsolateData storage isolatedStorage = data.myData;
        isolatedStorage.data.push(address(this));
        balance += x;
    }

    function withdrawBalance() public {
        Complex memory data = Complex(isolateData());
        IsolateData storage isolatedStorage = data.myData;
        isolateDataCopy().balance = 0;

        isolateDataCopy().myData.data;
        isolateDataCopy().myData.data = isolatedStorage.data;
    }

    function isolateDataCopy() public returns (IsolateData memory) {
        Complex memory data = Complex(isolateData());
        return data.myData;
    }

    function isolateData() private pure returns (IsolateData memory){
        return IsolateData(isolateDataCopy());
    }
}
